//
//  EnvironmentChild.swift
//  SwiftUISession
//
//  Created by woody on 2023/07/03.
//

import SwiftUI

private struct CustomEnvironmentKey: EnvironmentKey {
  static let defaultValue = "Default"
}

extension EnvironmentValues {
  var customEnvironment: String {
    get { self[CustomEnvironmentKey.self] }
    set { self[CustomEnvironmentKey.self] = newValue }
  }
}

struct EnvironmentChild: View {
  @Environment(\.customEnvironment) var customEnvironment
  
  var body: some View {
    Text("EnvironmentChild \(self.customEnvironment)")
  }
}


struct EnvironmentChild_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentChild()
  }
}
