//
//  SettingsActionRow.swift
//  MyDemoFramework
//
//  Created by Sagar Kadam on 20/02/23.
//

import SwiftUI

public struct SettingsActionRow: View {
    
    private var image: String
    private var title: String
    private var action: () -> ()
    
    public init(_ title: String, image: String, action: @escaping () -> ()) {
      self.image = image
      self.title = title
      self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
          SettingsRow(title, image: image, showDisclosure: true)
        }
        .buttonStyle(PlainButtonStyle())
      }
}


struct SettingsActionRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsActionRow("Setting Action Row", image: "heart.fill") {
            
            print("Executing Setting Action Row")
        }
        .padding()
    }
}
