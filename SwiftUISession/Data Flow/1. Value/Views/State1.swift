//
//  State1.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct State1: View {
  @State private var title = "hello world"
  
  var body: some View {
    Text(self.title)
      .onTapGesture {
        self.title = UUID().uuidString
      }
  }
}


struct State1_Previews: PreviewProvider {
  static var previews: some View {
    State1()
  }
}
