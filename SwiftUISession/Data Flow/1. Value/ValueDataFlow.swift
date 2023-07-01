//
//  ValueDataFlow.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/01.
//

import SwiftUI

struct Constant1: View {
  let title = "hello world"
  
  var body: some View {
    Text(self.title)
  }
}

struct State1: View {
  @State private var title = "hello world"
  
  var body: some View {
    Text(self.title)
      .onTapGesture {
        self.title = UUID().uuidString
      }
  }
}

struct ValueDataFlow: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 100) {
          GuideView(
            markdown:
            #"""
            ### 1. Constant
            
            ```swift
            struct Constant1: View {
              let title = "hello world"
              
              var body: some View {
                Text(self.title)
              }
            }
            ```
            """#
            ,
            content: { Constant1() }
          )
          
          GuideView(
            markdown:
            #"""
            ### 2. @State
            
            ```swift
            struct State1: View {
              @State private var title = "hello world"
              
              var body: some View {
                Text(self.title)
                  .onTapGesture {
                    self.title = UUID().uuidString
                  }
              }
            }
            ```
            """#
            ,
            content: { State1() }
          )
        }
        .padding(50)
      }
    }
  }
}

struct ValueDataFlow_Previews: PreviewProvider {
  static var previews: some View {
    ValueDataFlow()
  }
}
