//
//  OnboardingView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 13.07.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            }
            
        } // TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
      
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
