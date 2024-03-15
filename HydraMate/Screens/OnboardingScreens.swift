//
//  OnboardingScreens.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import SwiftUI

struct OnboardingScreens: View {
    var body: some View {
        VStack(alignment: .center){
            
            Image("onBoarding-0")
                .resizable()
                .frame(width: 351, height: 351)
            
            VStack(alignment: .center, spacing: 10){
                Text("Track your daily water intake with us.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Text("Achieve your hydration goals with simple tap!")
                    .font(.body)
                    .foregroundStyle(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
            }
            
            Button(action: {
                
            }, label: {
                Text("Next")
                    .font(.title2)
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .background{
                        Color.blue
                    }
            })
        }
    }
}

#Preview {
    OnboardingScreens()
}
