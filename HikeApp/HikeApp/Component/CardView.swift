//
//  CardView.swift
//  HikeApp
//
//  Created by 박준후 on 5/23/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("Pressed")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.customIndigoMedium,
                                    Color.customSalmonLight
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                
                // MARK: - FOOTER
                
                Button {
                    // ACTION: Generate a ramdom number
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium,
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2
                        )
                }
                .buttonStyle(GradientButton())
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
