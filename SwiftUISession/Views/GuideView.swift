//
//  GuideView.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/29.
//

import SwiftUI

import Splash
import MarkdownUI

struct GuideView<Content>: View where Content: View {
  let markdown: String
  let content: () -> Content
  
  init(markdown: String, @ViewBuilder content: @escaping () -> Content) {
    self.markdown = markdown
    self.content = content
  }
  
  var body: some View {
    HStack(spacing: 40) {
      Markdown(self.markdown)
        .markdownCodeSyntaxHighlighter(.splash(theme: .sunset(withFont: .init(size: 16))))
      
      self.content()
    }
  }
}
