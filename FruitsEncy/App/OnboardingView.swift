//
//  OnboardingView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 13.07.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView{
            ForEach(fruits) { fruit in
                FruitCardView(fruit: fruit)
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
