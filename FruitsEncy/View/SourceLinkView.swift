//
//  SourceLinkView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 14.07.2023.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                
            } // HStack
            .font(.footnote)
        } // GroupBox
    }
}


// MARK: - Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
