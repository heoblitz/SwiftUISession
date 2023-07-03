//
//  View+Extensions.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

extension View {
  func frame(length: CGFloat) -> some View {
    return self.frame(width: length, height: length)
  }
  
  func codePreview(length: CGFloat = 350) -> some View {
    return self
      .frame(length: length)
      .border(.black)
  }
}
