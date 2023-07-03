//
//  DependecySliderView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct DependecySliderView: View {
  @State var empty: CGFloat = 100
  
  var body: some View {
    VStack(spacing: 10) {
      Slider(value: self.$empty, in: 100...200)
      
      WithInitView(self.empty)
        .background(.red)
      
      WithOutInitView()
        .background(.blue)
    }
  }
}

struct DependecySliderView_Previews: PreviewProvider {
  static var previews: some View {
    DependecySliderView()
  }
}
