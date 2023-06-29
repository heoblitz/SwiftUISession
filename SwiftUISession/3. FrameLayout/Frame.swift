//
//  FrameLayout.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

struct FrameLayout: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 100) {
          GuideView(
            markdown:
            #"""
            ## 1. frame 으로 width height 주기
            
            ```swift
            Color.green
              .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                Color.green
                  .frame(width: 350, height: 350)
              }
            }
          )
          
          GuideView(
            markdown:
            #"""
            ## 2. maxWidth maxHeight 를 통해 exp 형태로 만들기
            
            ### 상황: Text("hello world") 를 bottomTrailing 으로 붙이고 싶을 때
            
            - ZStack 에는 hug 자식 뷰만 존재하므로 부모 뷰까지 늘어나지 않는다.

            ```swift
            VStack {
              ZStack(alignment: .bottomTrailing) {
                Text("hello world")
              }
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                ZStack(alignment: .bottomTrailing) {
                  Text("hello world")
                }
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
            #"""
            ```swift
            - exp 하는 속성의 뷰를 넣어서 해결할 수 있다.

            VStack {
              ZStack(alignment: .bottomTrailing) {
                Color.clear // exp 하는 뷰를 넣어서 부모 뷰까지 키워줌
                Text("hello world")
              }
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                ZStack(alignment: .bottomTrailing) {
                  Color.clear
                  Text("hello world")
                }
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
            #"""
            ```swift
            - maxWidth 와 maxHeight 를 통해 뷰를 exp 하도록 바꿀 수 있다.

            VStack {
              ZStack {
                Text("hello world")
              }
              .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottomTrailing
              )
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                ZStack {
                  Text("hello world")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
        }
        .padding(50)
      }
    }
  }
}

struct FrameLayout_Previews: PreviewProvider {
  static var previews: some View {
    FrameLayout()
  }
}
