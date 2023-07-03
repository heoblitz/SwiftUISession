//
//  StateObjectExample.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct StateObjectExample: View {
  @StateObject var counter = Counter()
  
  var body: some View {
    VStack {
      Text("\(counter.count)")
      Button("increase count") {
        self.counter.count += 1
      }
    }
  }
}
struct StateObjectExample_Previews: PreviewProvider {
  static var previews: some View {
    StateObjectExample()
  }
}
