//
//  Child1.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct Child1: View {
  let title: String
  
  var body: some View {
    Text("Child1 \(self.title)")
  }
}

struct Child1_Previews: PreviewProvider {
  static var previews: some View {
    Child1(title: "test")
  }
}
