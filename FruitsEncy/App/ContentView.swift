//
//  ContentView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                    .padding(.vertical, 8)
                    .listRowSeparator(.hidden)
                }
               
            } // List
            .listStyle(PlainListStyle())
            .navigationTitle("Fruits")
            .toolbar {
                Button(action : {
                        isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } // Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } // NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
