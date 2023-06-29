//
//  AmbiguousLayout.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

struct AmbiguousLayout: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 100) {
        GuideView(
          markdown:
          #"""
          ## 1. exp 에 fixedSize() 를 주면
          
          ```swift
          VStack {
            Color.green
              .fixedSize()
          }
          .frame(width: 500, height: 500)
          ```
          """#
          ,
          content: {
            VStack {
              VStack {
                Color.green
                  .fixedSize()
              }
              .frame(width: 500, height: 500)
              .border(.black)
            }
          }
        )
      }
      .padding(50)
    }
  }
}

struct AmbiguousLayout_Previews: PreviewProvider {
  static var previews: some View {
    AmbiguousLayout()
  }
}
