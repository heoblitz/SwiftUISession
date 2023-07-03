//
//  EnvironmentObjectExample.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct EnvironmentObjectExample: View {
  @EnvironmentObject var counter: Counter
  
  var body: some View {
    VStack {
      Text("\(counter.count)")
      Button("increase count") {
        self.counter.count += 1
      }
    }
  }
}

struct EnvironmentObjectExample_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentObjectExample()
  }
}
