//
//  ContentView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                        .listRowSeparator(.hidden)
                }
            } // List
            .listStyle(PlainListStyle())
            .navigationTitle("Fruits")
        } // NavigationView
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
