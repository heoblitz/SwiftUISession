//
//  LayoutBasic.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/26.
//

import SwiftUI

struct LayoutBasic: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 400) {
          GuideView(
            markdown:
            #"""
            ### 1. 자식 뷰가 exp 일 때
            
            ```swift
            VStack {
              Color.green
            }
            .frame(width: 350, height: 350)
            ```
            """#
            ,
            content: {
              VStack {
                VStack {
                  Color.green
                }
                .frame(width: 350, height: 350)
                .border(.black)
              }
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 2. 자식 뷰가 hug 일 때
              
              ```swift
              VStack {
                Text("Hello World")
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                Text("Hello World")
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 3. 부모 뷰가 중립이고, 모든 자식 뷰가 hug 일 때
              
              ```swift
              VStack {
                VStack {
                  Text("Hello World")
                  Text("Hello World")
                }
                .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
              ```
              """#
            ,
            content: {
              VStack {
                VStack {
                  Text("Hello World")
                  Text("Hello World")
                }
                .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          
          GuideView(
            markdown:
              #"""
              ### 4. 부모 뷰가 중립이고, 자식 뷰가 hug 와 exp 일 때
              
              ```swift
              VStack {
                VStack {
                  Color.green
                  Text("Hello World")
                }
                .background(.brown)
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                VStack {
                  Color.green
                  Text("Hello World")
                }
                .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 5. 부모 뷰가 중립이고, 모든 자식 뷰가 exp 일 때
              
              ```swift
              VStack {
                VStack {
                  Color.green
                  Color.blue
                }
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                VStack {
                  Color.green
                  Color.blue
                }
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 6. 자식 뷰는 부모 뷰 사이즈를 무시할 수 있다.
              
              ```swift
              VStack {
                Color.blue
                  .frame(width: 400, height: 400)
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                Color.blue
                  .frame(width: 400, height: 400)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 7. 자식 뷰는 부모 뷰 사이즈를 존중할 수 있다.
              
              ```swift
              VStack {
                Text(Array(repeating: "a", count: 800).joined())
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                Text(Array(repeating: "a", count: 800).joined())
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
          GuideView(
            markdown:
              #"""
              ### 8. fixedSize 를 통해 선택적으로 부모 뷰 사이즈를 존중할 수 있다.
              
              ```swift
              VStack {
                Text(Array(repeating: "a", count: 800).joined())
                  .fixedSize(horizontal: false, vertical: true)
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              ```
              """#
            ,
            content: {
              VStack {
                Text(Array(repeating: "a", count: 800).joined())
                  .fixedSize(horizontal: false, vertical: true)
                  .background(.brown)
              }
              .frame(width: 350, height: 350)
              .border(.black)
            }
          )
          
        }
        .padding(.vertical, 200)
      }
    }
  }
}

struct LayoutBasic_Previews: PreviewProvider {
  static var previews: some View {
    LayoutBasic()
  }
}




