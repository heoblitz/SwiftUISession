//
//  ViewTree.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

struct ViewTree: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 100) {
          GuideView(
            markdown:
            #"""
            ```swift
            VStack {
              if true {
                Color.gray
              } else {
                Color.green
              }
              
              ForEach(0..<1) { _ in
                Color.blue
              }
            }
            .padding()
            .mirror()
            ```
            """#
            ,
            content: {
              VStack {
                if true {
                  Color.gray
                } else {
                  Color.green
                }
                
                ForEach(0..<1) { _ in
                  Color.blue
                }
              }
              .padding()
              .mirror()
            }
          )
        }
        .padding(50)
        
        Text("ModifiedContent<VStack<TupleView<(_ConditionalContent<Color, Color>, ForEach<Range<Int>, Int, Color>)>>, _PaddingLayout>")
      }
    }
  }
}

struct ViewTree_Previews: PreviewProvider {
  static var previews: some View {
    ViewTree()
  }
}
