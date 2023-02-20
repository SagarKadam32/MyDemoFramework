//
//  SettingsRow.swift
//  MyDemoFramework
//
//  Created by Sagar Kadam on 20/02/23.
//

import SwiftUI

public struct SettingsRow: View {
    
    private var title: String
    private var image: String
    private var showDisclosure: Bool
    
    public init(_ title: String, image: String, showDisclosure: Bool = false) {
      self.image = image
      self.title = title
      self.showDisclosure = showDisclosure
    }
    
    public var body: some View {
        HStack(spacing: 8) {
          Image(systemName: image)
            .font(.headline)
            .frame(minWidth: 25, alignment: .leading)
            .accessibility(hidden: true)

          Text(title)

          Spacer()

          if showDisclosure {
            Image(systemName: "chevron.right")
              .accessibility(hidden: true)
          }
        }
        .padding(.vertical)
        .foregroundColor(.accentColor)
      }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRow("Test Setting Row", image: "heart.fill", showDisclosure: true)
            .padding()
    }
}
