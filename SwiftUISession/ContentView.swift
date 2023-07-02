//
//  ContentView.swift
//  SwiftUISession
//
//  Created by woody on 2023/06/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      Form {
        Section("Layout") {
          NavigationLink {
            LayoutBasic()
              .navigationTitle("1. LayoutBasic")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("1. LayoutBasic")
          }
          
          NavigationLink {
            AmbiguousLayout()
              .navigationTitle("2. AmbiguousLayout")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("2. AmbiguousLayout")
          }
          
          NavigationLink {
            FrameLayout()
              .navigationTitle("3. FrameLayout")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("3. FrameLayout")
          }
          
          NavigationLink {
            ViewTree()
              .navigationTitle("4. ViewTree")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("4. ViewTree")
          }
          
          NavigationLink {
            PreferenceKeySample()
              .navigationTitle("5. PreferenceKey")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("5. PreferenceKey")
          }
        }
        
        Section("Data Flow") {
          NavigationLink {
            ValueDataFlow()
              .navigationTitle("1. Value Data Flow")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("1. Value Data Flow")
          }
          
          NavigationLink {
            ObjectDataFlow()
              .navigationTitle("2. Object Data Flow")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("2. Object Data Flow")
          }
          
          NavigationLink {
            DependecyGraphUpdate()
              .navigationTitle("3. Dependecy Graph Update")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("3. Dependecy Graph Update")
          }
          
          NavigationLink {
            ViewLifeCycle()
              .navigationTitle("4. View Life Cycle")
              .navigationBarTitleDisplayMode(.inline)
          } label: {
            Text("4. View Life Cycle")
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
