//
//  ViewTree.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

fileprivate struct ColorView: View {
  var body: some View {
    Color.green
  }
}

struct ViewTree: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 400) {
          GuideView(
            markdown:
            #"""
            ```swift
            VStack {
              if true {
                Color.gray
              } else {
                ColorView()
              }
              
              ForEach(0..<1) { _ in
                Color.blue
              }
            }
            .padding()
            ```
            """#
            ,
            content: {
              VStack {
                if true {
                  Color.gray
                } else {
                  ColorView()
                }
                
                ForEach(0..<1) { _ in
                  Color.blue
                }
              }
              .padding()
              .mirror()
              .debug()
            }
          )
        }
        
        Text("ModifiedContent<VStack<TupleView<(_ConditionalContent<Color, ColorView>, ForEach<Range<Int>, Int, Color>)>>, _PaddingLayout>")
      }
      .padding(.vertical, 200)
    }
  }
}

struct ViewTree_Previews: PreviewProvider {
  static var previews: some View {
    ViewTree()
  }
}
