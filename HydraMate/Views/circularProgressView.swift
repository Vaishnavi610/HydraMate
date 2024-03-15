//
//  circularProgressView.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import SwiftUI

struct circularProgressView: View {
    
    @Binding var progress: Double
    @Binding var totalCups : Int
    
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(Color.lightBlueColor.opacity(0.3), lineWidth: 20)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.primaryBlueColor, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotationEffect(.degrees(180))
                .animation(.easeInOut, value: progress)
            
            
            VStack(alignment: .center, spacing: 0){
                
                Text("Today's Intake")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("78 %")
                    .font(.largeTitle)
                    .fontWeight(.medium)

            }
            .padding(.top, 50)
        }
    }
}

#Preview {
    circularProgressView(progress: .constant(0.55), totalCups: .constant(2))
}
