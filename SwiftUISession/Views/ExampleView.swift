//
//  ExampleView.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

struct ExampleView<Content: View>: View {
  private let content: Content
  
  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }
  
  var body: some View {
    Form {
      ScrollView {
        LazyVStack(spacing: 400) {
          self.content
        }
        .padding(.vertical, 200)
      }
    }
  }
}
