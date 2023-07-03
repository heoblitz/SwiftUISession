//
//  Child2.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct Child2: View {
  @Binding var title: String
  
  var body: some View {
    Button("Child2 Button") {
      self.title = UUID().uuidString
    }
  }
}

struct Child2_Previews: PreviewProvider {
  static var previews: some View {
    Child2(title: .constant("test"))
  }
}
