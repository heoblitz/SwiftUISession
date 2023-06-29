//
//  ContentView.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/26.
//

import SwiftUI

enum Session: CaseIterable, Identifiable {
  case layoutBasic
  case ambiguousLayout
  
  var id: String { self.title }
  
  var title: String {
    switch self {
    case .layoutBasic: return "1. Layout"
    case .ambiguousLayout: return "2. Ambiguous Layout"
    }
  }
  
  var titleView: some View {
    Text(self.title)
      .font(.title3)
      .foregroundColor(.black)
  }
  
  @ViewBuilder
  var contentView: some View {
    switch self {
    case .layoutBasic:
      LayoutBasic()
      
    case .ambiguousLayout:
      AmbiguousLayout()
    }
  }
}

struct ContentView: View {
  @State private var selectedSession: Session = .layoutBasic
  
  var body: some View {
    NavigationSplitView(sidebar: {
      Form {
        ForEach(Session.allCases) { session in
          Button {
            self.selectedSession = session
          } label: {
            session.titleView
          }
        }
      }
      .listStyle(.sidebar)
    }, detail: {
      self.selectedSession.contentView
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
