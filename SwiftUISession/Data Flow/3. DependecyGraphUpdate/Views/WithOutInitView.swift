//
//  WithOutInitView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct WithOutInitView: View {
  var body: some View {
    Text(UUID().uuidString)
  }
}

struct WithOutInitView_Previews: PreviewProvider {
  static var previews: some View {
    WithOutInitView()
  }
}
