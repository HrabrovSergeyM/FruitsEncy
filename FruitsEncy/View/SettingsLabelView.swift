//
//  SettingsLabelView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 14.07.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } // HStack
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits Ency", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
