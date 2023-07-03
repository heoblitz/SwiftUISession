//
//  PreferenceKey.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/30.
//

import SwiftUI

struct PreferenceKeySample: View {
  @State private var offset: CGFloat = 0
  
  var body: some View {
    ExampleView {
      CodeView(
        markdown:
        #"""
        ```swift
        ScrollView {
          VStack {
            ForEach(0..<100) { i in
              Text("Item \(i)").padding()
            }
          }
          .background(
            GeometryReader {
              // 1. content offset 상위 뷰로 전달
              Color.clear.preference(
                key: ViewOffsetKey.self,
                value: -$0.frame(in: .named("scroll")).origin.y
              )
            }
          )
          // 2. content offset 하위 뷰에서 받은 값 구독
          .onPreferenceChange(ViewOffsetKey.self) { self.offset = $0 }
        }
        .coordinateSpace(name: "scroll")
        .overlay {
          Text("\(self.offset)")
        }
        ```
        """#
        ,
        content: {
          DemoScrollViewOffsetView()
            .codePreview()
        }
      )
    }
  }
}

struct PreferenceKey_Previews: PreviewProvider {
  static var previews: some View {
    PreferenceKeySample()
  }
}

