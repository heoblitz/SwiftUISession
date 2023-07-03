//
//  Parent1.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct Parent1: View {
  @State private var title = "hello world"
  
  var body: some View {
    VStack {
      Text(self.title)
      Child1(title: self.title)
    }
  }
}

struct Parent1_Previews: PreviewProvider {
  static var previews: some View {
    Parent1()
  }
}
