//
//  HomeViewScreen.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import SwiftUI
import Charts

struct HomeViewScreen: View {
    
    @State var progressValue : Double = 0.25
    @State var totalCup : Int = 2
    
    var body: some View {
        VStack(spacing: 50){
            VStack(alignment: .leading, spacing: 15){
                HStack{
                    Image("waterBottle")
                        .resizable()
                        .frame(width: 62, height: 62)
                    
                    Text("Stay Hydrated \nStay Fresh")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
                Text("On the basis of your activity input, you have to drink 8 ounces water daily.")
                    .font(.body)
                    .foregroundStyle(Color.subHeadlineTextColor)
            }
            
            circularProgressView(progress: $progressValue, totalCups: $totalCup )
                .frame(width: 264, height: 264)
            
            HStack(alignment: .center, spacing: 10) {
                Button(action: {
                    
                }, label: {
                    Image("minusBtn")
                        .frame(width: 45, height: 45)
                })
               
                VStack{
                    Image("water-glass")
                        .resizable()
                        .frame(width: 66, height: 66)
                    
                    Text("1 Cup = 8 Ounces")
                        .font(.body)
                }
                
                Button(action: {
                    
                }, label: {
                    Image("plusBtn")
                        .frame(width: 45, height: 45)
                })
                
              
                
            }
            
            
            Spacer()
            
            
            
        }
        .padding(.top, 30)
    }
}

#Preview {
    HomeViewScreen()
}
