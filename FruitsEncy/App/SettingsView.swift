//
//  SettingsView.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 14.07.2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.isPresented) var isPresented
    @Environment(\.dismiss) var dismiss
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Fruits Ency", labelImage: "info.circle")
                    ) {
                        
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are souces of many essential nutrients, including potassium, dietary fiber and much more.")
                                .font(.footnote)
                        } // HStack
                    }
                    
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the app by toggle the switch. That way is starts the onboarding process and you will see the Welcome Screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                    
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Sergey Hrabrov")
                        SettingsRowView(name: "Website", linkLabel: "GitHub", linkDestination: "github.com/HrabrovSergeyM")
                    }
                    
                } // VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }

                }
                
                .padding()
            } // ScrollView
        } // NavigationView
       
    }
}
// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
