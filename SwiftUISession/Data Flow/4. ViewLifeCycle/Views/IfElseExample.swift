//
//  IfElseExample.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct IfElseExample: View {
  @State var isChecked = false
  
  var body: some View {
    VStack(spacing: 10) {
      StateObjectExample()
        .background(self.isChecked ? .yellow : .green)
      
      if self.isChecked {
        StateObjectExample()
          .background(.yellow)
      } else {
        StateObjectExample()
          .background(.green)
      }
      
      Button("toggle") {
        self.isChecked.toggle()
      }
    }
  }
}

struct IfElseExample_Previews: PreviewProvider {
  static var previews: some View {
    IfElseExample()
  }
}
