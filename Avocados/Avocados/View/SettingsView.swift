//
//  SettingsView.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                
            } //: VSTACK
            .padding()
            
            Form {
                // MARK: - SECTION 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                // MARK: - SECTION 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("Iphone $ Ipad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Joon hoo")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                
                }
            }
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
