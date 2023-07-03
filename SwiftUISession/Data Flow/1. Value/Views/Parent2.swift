//
//  Parent2.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct Parent2: View {
  @State private var title = "hello world"
  
  var body: some View {
    VStack {
      Text(self.title)
      
      // 1. $를 붙이면 Binding 으로 바로 접근할 수 있다.
      Child2(title: self.$title)
        .background(.red)
      
      // 2. Binding 은 결국 getter setter 을 제공하는 랩퍼이다.
      Child2(title: .init(get: { self.title }, set: { self.title = $0 }))
        .background(.green)
    }
  }
}
struct Parent2_Previews: PreviewProvider {
  static var previews: some View {
    Parent2()
  }
}
