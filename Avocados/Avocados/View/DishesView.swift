//
//  DishesView.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                } //: HSTACK
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            } //: VSTACK
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
            }
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: .center)
    }
}

#Preview {
    DishesView()
}
