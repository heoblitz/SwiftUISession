//
//  LayoutBasic.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/26.
//

import SwiftUI

struct LayoutBasic: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 100) {
        GuideView(
          markdown:
          #"""
          ## 1. 자식 뷰가 exp 일 때
          
          ```swift
          VStack {
            Color.green
          }
          .frame(width: 500, height: 500)
          ```
          """#
          ,
          content: {
            VStack {
              VStack {
                Color.green
              }
              .frame(width: 500, height: 500)
              .border(.black)
            }
          }
        )
        
        GuideView(
          markdown:
            #"""
            ## 2. 자식 뷰가 hug 일 때
            
            ```swift
            VStack {
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            ```
            """#
          ,
          content: {
            VStack {
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            .border(.black)
          }
        )
        
        
        GuideView(
          markdown:
            #"""
            ## 3. 모든 자식 뷰가 hug 일 때
            
            ```swift
            VStack {
              Text("Hello World")
                .background(.brown)
              
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            ```
            """#
          ,
          content: {
            VStack {
              Text("Hello World")
                .background(.brown)
              
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            .border(.black)
          }
        )
        
        
        GuideView(
          markdown:
            #"""
            ## 4. 자식 뷰가 hug 와 exp 일 때
            
            ```swift
            VStack {
              Color.green
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            ```
            """#
          ,
          content: {
            VStack {
              Color.green
              Text("Hello World")
                .background(.brown)
            }
            .frame(width: 500, height: 500)
            .border(.black)
          }
        )
        
        GuideView(
          markdown:
            #"""
            ## 5. 모든 자식 뷰가 exp 일 때
            
            ```swift
            VStack {
              Color.green
              Color.blue
            }
            .frame(width: 500, height: 500)
            ```
            """#
          ,
          content: {
            VStack {
              Color.green
              Color.blue
            }
            .frame(width: 500, height: 500)
            .border(.black)
          }
        )

        GuideView(
          markdown:
            #"""
            ## 6. 자식 뷰는 부모 뷰 사이즈를 무시할 수 있다.
            
            ```swift
            VStack {
              Color.blue
                .frame(width: 550, height: 550)
            }
            .frame(width: 500, height: 500)
            ```
            """#
          ,
          content: {
            VStack {
              Color.blue
                .frame(width: 550, height: 550)
            }
            .frame(width: 500, height: 500)
            .border(.black)
          }
        )
      }
      .padding(50)
    }
  }
}

struct LayoutBasic_Previews: PreviewProvider {
  static var previews: some View {
    LayoutBasic()
  }
}




