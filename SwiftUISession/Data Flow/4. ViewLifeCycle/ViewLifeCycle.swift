//
//  ViewLifeCycle.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/02.
//

import SwiftUI

struct ViewLifeCycle: View {
  var body: some View {
    ExampleView {
      CodeView(
        markdown:
        #"""
        ```swift
        // 1. if else
        struct IfElseExample: View {
          @State var isChecked = false
          
          var body: some View {
            VStack(spacing: 10) {
              StateObjectExample()
                .background(self.isChecked ? .yellow : .green)
        
              if self.isChecked {
                StateObjectExample()
                  .background(.yellow)
              } else {
                StateObjectExample()
                  .background(.green)
              }
              
              Button("toggle") {
                self.isChecked.toggle()
              }
            }
          }
        }
        ```
        """#
        ,
        content: {
          IfElseExample()
            .codePreview()
        }
      )
    }
  }
}

struct ViewLifeCycle_Previews: PreviewProvider {
  static var previews: some View {
    ViewLifeCycle()
  }
}
