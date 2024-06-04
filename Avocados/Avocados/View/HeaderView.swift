//
//  HeaderView.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    var header: Header
    
    @State private var showHeadline: Bool = false
    
    var slideAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                } //: VSTACK
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 280, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            } //: HSTACK
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation, value: showHeadline)
            .onAppear {
                showHeadline.toggle()
            }
        } //: ZSTACK
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(header: headerData[0])
}