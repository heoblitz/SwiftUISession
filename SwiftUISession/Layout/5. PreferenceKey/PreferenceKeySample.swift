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
    Form {
      ScrollView {
        VStack(spacing: 400) {
          GuideView(
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
                .frame(height: 300)
            }
          )
        }
        .padding(.vertical, 200)
      }
    }
  }
}

struct PreferenceKey_Previews: PreviewProvider {
  static var previews: some View {
    PreferenceKeySample()
  }
}

struct ScrollViewOffsetPreferenceKey: PreferenceKey {
  typealias Value = CGFloat
  static var defaultValue = CGFloat.zero
  static func reduce(value: inout Value, nextValue: () -> Value) {
    value += nextValue()
  }
}

struct DemoScrollViewOffsetView: View {
  @State private var offset = CGFloat.zero
  
  var body: some View {
    ScrollView {
      VStack {
        ForEach(0..<100) { i in
          Text("Item \(i)").padding()
        }
      }
      .background(
        GeometryReader {
          Color.clear.preference(
            key: ViewOffsetKey.self,
            value: -$0.frame(in: .named("scroll")).origin.y
          )
        }
      )
      .onPreferenceChange(ViewOffsetKey.self) { self.offset = $0 }
    }
    .coordinateSpace(name: "scroll")
    .overlay {
      Text("\(self.offset)")
    }
  }
}

struct ViewOffsetKey: PreferenceKey {
  typealias Value = CGFloat
  static var defaultValue = CGFloat.zero
  static func reduce(value: inout Value, nextValue: () -> Value) {
    value += nextValue()
  }
}
