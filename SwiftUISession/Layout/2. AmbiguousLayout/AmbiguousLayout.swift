//
//  AmbiguousLayout.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

struct AmbiguousLayout: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 100) {
          GuideView(
            markdown:
            #"""
            ### 1. exp 에 fixedSize() 를 주면
            
            ```swift
            VStack {
              Color.green
                .fixedSize()
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                VStack {
                  Color.green
                    .fixedSize()
                }
                .frame(width: 350, height: 350)
                .border(.black)
              }
            }
          )
        }
        .padding(50)
        
        VStack(spacing: 100) {
          GuideView(
            markdown:
            #"""
            ### 2. 두 exp 가 존재하고, 한 쪽의 layoutPriority 가 더 높을 떄
            
            ```swift
            VStack {
              Color.green
              Color.red
                .layoutPriority(1)
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                VStack {
                  Color.green
                  Color.red
                    .layoutPriority(1)
                }
                .frame(width: 350, height: 350)
                .border(.black)
              }
            }
          )
        }
        .padding(50)
      }
    }
  }
}

struct AmbiguousLayout_Previews: PreviewProvider {
  static var previews: some View {
    AmbiguousLayout()
  }
}
