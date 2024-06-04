//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    RipeningStagesView()
}
