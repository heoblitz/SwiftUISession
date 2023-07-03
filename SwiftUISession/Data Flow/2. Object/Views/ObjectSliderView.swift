//
//  ObjectSliderView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct ObjectSliderView: View {
  @State var empty: CGFloat = 100

  var body: some View {
    VStack(spacing: 10) {
      Slider(value: self.$empty, in: 100...200)
        
      ObservedObjectExample()
        .background(.red)
      
      StateObjectExample()
        .background(.green)
    }
  }
}

struct ObjectSliderView_Previews: PreviewProvider {
  static var previews: some View {
    ObjectSliderView()
  }
}
