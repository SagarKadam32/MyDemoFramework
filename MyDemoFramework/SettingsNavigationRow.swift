//
//  SettingsNavigationRow.swift
//  MyDemoFramework
//
//  Created by Sagar Kadam on 20/02/23.
//

import SwiftUI

public struct SettingsNavigationRow<Destination: View>: View {
    
    private var title: String
    private var image: String
    private var destination: Destination
    
    public init(_ title: String, image: String, destination: Destination) {
      self.image = image
      self.title = title
      self.destination = destination
    }
    
    public var body: some View {
      NavigationLink(destination: destination) {
        SettingsRow(title, image: image, showDisclosure: true)
      }
      .buttonStyle(PlainButtonStyle())
    }
}

public extension View {
  func settingsBackground(cornerRadius: CGFloat = 16,
                          innerPadding: CGFloat = 8,
                          outerPadding: CGFloat = 16) -> some View {
    self
      .padding(.horizontal, 16)
      .padding(.vertical, innerPadding)
      .background(RoundedRectangle(cornerRadius: cornerRadius,
                                   style: .continuous)
                    .fill(Color(.secondarySystemBackground)))
      .padding(outerPadding)
  }
}

//struct SettingsNavigationRow_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsNavigationRow()
//    }
//}
