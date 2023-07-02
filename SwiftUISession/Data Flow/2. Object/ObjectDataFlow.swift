//
//  ObjectDataFlow.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/02.
//

import SwiftUI

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

struct ObjectDataFlow: View {
  var body: some View {
    Form {
      ScrollView {
        LazyVStack(spacing: 400) {
          GuideView(
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
                .frame(width: 350, height: 350)
                .border(.black)
            }
          )
          
          GuideView(
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
                .frame(width: 350, height: 350)
                .border(.black)
            }
          )

          GuideView(
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
                .frame(width: 350, height: 350)
                .border(.black)
            }
          )

          
          GuideView(
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

struct ObjectDataFlow_Previews: PreviewProvider {
  static var previews: some View {
    ObjectDataFlow()
  }
}
