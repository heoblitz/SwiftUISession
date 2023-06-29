//
//  Debug.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

extension View {
  func debug() -> some View {
    print(type(of: self))
    return self
  }
}


