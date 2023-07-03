//
//  WithInitView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct WithInitView: View {
  let empty: CGFloat
  
  init(_ empty: CGFloat) {
    self.empty = empty
    print("WithInitView")
  }
  
  var body: some View {
    Text(UUID().uuidString)
  }
}

struct WithInitView_Previews: PreviewProvider {
  static var previews: some View {
    WithInitView(0)
  }
}
