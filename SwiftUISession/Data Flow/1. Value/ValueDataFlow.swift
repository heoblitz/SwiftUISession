//
//  ValueDataFlow.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/01.
//

import SwiftUI

struct ValueDataFlow: View {
  var body: some View {
    ExampleView {
      CodeView(
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
        content: {
          Constant1()
            .codePreview()
        }
      )
      
      CodeView(
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
        content: {
          State1()
            .codePreview()
        }
      )
      
      CodeView(
        markdown:
        #"""
        ### 3. @State -> Constant
        
        ```swift
        struct Parent1: View {
          @State private var title = "hello world"
          
          var body: some View {
            VStack {
              Text(self.title)
              Child1(title: self.title)
            }
          }
        }

        struct Child1: View {
          let title: String
          
          var body: some View {
            Text("Child1 \(self.title)")
          }
        }
        ```
        """#
        ,
        content: {
          Parent1()
            .codePreview()
        }
      )
      
      CodeView(
        markdown:
        #"""
        ### 3. @State -> @Binding
        
        ```swift
        struct Parent2: View {
          @State private var title = "hello world"
          
          var body: some View {
            VStack {
              Text(self.title)
              
              // 1. $를 붙이면 Binding 으로 바로 접근할 수 있다.
              Child2(title: self.$title)
                .background(.red)
              
              // 2. Binding 은 결국 getter setter 을 제공하는 랩퍼입니다.
              Child2(title: .init(get: { self.title }, set: { self.title = $0 }))
                .background(.green)
            }
          }
        }

        struct Child2: View {
          @Binding var title: String
          
          var body: some View {
            Button("Child2 Button") {
              self.title = UUID().uuidString
            }
          }
        }
        ```
        """#
        ,
        content: {
          Parent2()
            .codePreview()
        }
      )
      
      CodeView(
        markdown:
        #"""
        ### 4. EnvironmentValue
        
        ```swift
        // 1. EnvironmentValue 구성하기

        private struct CustomEnvironmentKey: EnvironmentKey {
          static let defaultValue = "Default"
        }

        extension EnvironmentValues {
          var customEnvironment: String {
            get { self[CustomEnvironmentKey.self] }
            set { self[CustomEnvironmentKey.self] = newValue }
          }
        }

        
        // 2. EnvironmentValue 사용하기

        struct EnvironmentChild: View {
          @Environment(\.customEnvironment) var customEnvironment

          var body: some View {
            Text("EnvironmentChild \(self.customEnvironment)")
          }
        }
        
        
        
        // 3. Example View
        
        VStack {
          VStack {
            EnvironmentChild()
              .background(.red)
            
            EnvironmentChild()
              .background(.blue)
          }
          .environment(\.customEnvironment, "Injection!")
          
          EnvironmentChild()
            .background(.green)
        }
        """#
        ,
        content: {
          VStack {
            VStack {
              EnvironmentChild()
                .background(.red)
              
              EnvironmentChild()
                .background(.blue)
            }
            .environment(\.customEnvironment, "Injection!")
            
            EnvironmentChild()
              .background(.green)
          }
          .codePreview()
        }
      )
    }
  }
}

struct ValueDataFlow_Previews: PreviewProvider {
  static var previews: some View {
    ValueDataFlow()
  }
}
