//
//  DemoScrollViewOffsetView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct ViewOffsetKey: PreferenceKey {
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
