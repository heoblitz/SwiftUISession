//
//  ViewTree.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

struct ViewTree: View {
  var body: some View {
    ExampleView {
      CodeView(
        markdown:
        #"""
        ```swift
        VStack {
          if true {
            Color.gray
          } else {
            TestColorView()
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
              TestColorView()
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
      
      Text("ModifiedContent<VStack<TupleView<(_ConditionalContent<Color, TestColorView>, ForEach<Range<Int>, Int, Color>)>>, _PaddingLayout>")
    }
  }
}

struct ViewTree_Previews: PreviewProvider {
  static var previews: some View {
    ViewTree()
  }
}
