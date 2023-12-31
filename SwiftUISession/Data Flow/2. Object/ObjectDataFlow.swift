//
//  ObjectDataFlow.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/02.
//

import SwiftUI

struct ObjectDataFlow: View {
  var body: some View {
    ExampleView {
      CodeView(
        markdown:
        #"""
        ### 1. @ObservedObject
        
        ```swift
        class Counter: ObservableObject {
          @Published var count: Int = 0
        }
        
        struct ObservedObjectExample: View {
          @ObservedObject var counter = Counter()
        
          var body: some View {
            VStack {
              Text("\(counter.count)")
              Button("increase count") {
                self.counter.count += 1
              }
            }
          }
        }
        ```
        """#
        ,
        content: {
          ObservedObjectExample()
            .codePreview()
        }
      )
      
      CodeView(
        markdown:
        #"""
        ### 2. @StateObject
        
        ```swift
        struct StateObjectExample: View {
          @StateObject var counter = Counter()
        
          var body: some View {
            VStack {
              Text("\(counter.count)")
              Button("increase count") {
                self.counter.count += 1
              }
            }
          }
        }
        ```
        """#
        ,
        content: {
          StateObjectExample()
            .codePreview()
        }
      )
      
      CodeView(
        markdown:
        #"""
        ### 3. @ObservedObject vs @StateObject
        
        ```swift
        struct ObjectSliderView: View {
          @State var empty: CGFloat = 100
        
          var body: some View {
            VStack(spacing: 10) {
              Slider(value: self.$empty, in: 100...200)
                
              ObservedObjectExample()
                .background(.red)
              
              StateObjectExample()
                .background(.green)
            }
          }
        }
        ```
        """#
        ,
        content: {
          ObjectSliderView()
            .codePreview()
        }
      )
      
      
      CodeView(
        markdown:
        #"""
        ### 4. @EnvironmentObject
        
        ```swift
        struct EnvironmentObjectExample: View {
          @EnvironmentObject var counter: Counter
        
          var body: some View {
            VStack {
              Text("\(counter.count)")
              Button("increase count") {
                self.counter.count += 1
              }
            }
          }
        }
        
        
        // Example 뷰
        VStack {
          EnvironmentObjectExample()
            .background(.red)
          
          VStack {
            EnvironmentObjectExample()
              .background(.green)
        
            EnvironmentObjectExample()
              .background(.yellow)
          }
        }
        .environmentObject(Counter())
        ```
        """#
        ,
        content: {
          VStack {
            EnvironmentObjectExample()
              .background(.red)
            
            VStack {
              EnvironmentObjectExample()
                .background(.green)
              
              EnvironmentObjectExample()
                .background(.yellow)
            }
          }
          .environmentObject(Counter())
          .codePreview()
        }
      )
    }
  }
}

struct ObjectDataFlow_Previews: PreviewProvider {
  static var previews: some View {
    ObjectDataFlow()
  }
}
