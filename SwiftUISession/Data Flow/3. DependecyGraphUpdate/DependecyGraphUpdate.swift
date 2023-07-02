//
//  3. DependecyGraphUpdate.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/02.
//

import SwiftUI

struct WithInitView: View {
  let empty: CGFloat
  
  init(_ empty: CGFloat) {
    self.empty = empty
    print("WithInitView")
  }
  
  var body: some View {
    Text(UUID().uuidString)
  }
}

struct WithOutInitView: View {
  var body: some View {
    Text(UUID().uuidString)
  }
}

struct DependecySliderView: View {
  @State var empty: CGFloat = 100

  var body: some View {
    VStack(spacing: 10) {
      Slider(value: self.$empty, in: 100...200)
        
      WithInitView(self.empty)
        .background(.red)
      
      WithOutInitView()
        .background(.blue)
    }
  }
}

struct DependecyGraphUpdate: View {
  var body: some View {
    Form {
      ScrollView {
        VStack(spacing: 400) {
          GuideView(
            markdown:
            #"""
            ```swift
            // 1. 의존성을 가지고 있는 자식 뷰
            struct WithInitView: View {
              let empty: CGFloat
              
              init(_ empty: CGFloat) {
                self.empty = empty
              }
              
              var body: some View {
                Text(UUID().uuidString)
              }
            }

            // 2. 의존성을 가지고 있지 않은 자식 뷰
            struct WithOutInitView: View {
              var body: some View {
                Text(UUID().uuidString)
              }
            }

            
            
            // 3. Example 뷰
            struct DependecySliderView: View {
              @State var empty: CGFloat = 100

              var body: some View {
                VStack(spacing: 10) {
                  Slider(value: self.$empty, in: 100...200)
                    
                  WithInitView(self.empty)
                    .background(.red)
                  
                  WithOutInitView()
                    .background(.blue)
                }
              }
            }

            ```
            """#
            ,
            content: { DependecySliderView() }
          )
        }
        .padding(.vertical, 200)
      }
    }
  }
}

struct DependecyGraphUpdate_Previews: PreviewProvider {
  static var previews: some View {
    DependecyGraphUpdate()
  }
}
