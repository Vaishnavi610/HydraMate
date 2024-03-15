//
//  OnboardingScreens.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import SwiftUI

struct OnboardingScreens: View {
    
    @State var currentPage = 0
    @State var goToHome : Bool = false
    
    
    var body: some View {
        ZStack{
            
            Circle()
                .blur(radius: 40)
                .frame(width: 115, height: 119)
                .foregroundStyle(Color.shadowBallColor)
                .offset(x: -200, y: -300)
            
            Circle()
                .blur(radius: 40)
                .frame(width: 115, height: 119)
                .foregroundStyle(Color.shadowBallColor)
                .offset(x: 200, y: 200)
            
            ForEach(OnBoardingScreenTitles.indices, id: \.self) { element in
                VStack(alignment: .center, spacing: 20){
                    Image(currentPage == element ? "onBoarding-\(element)" : "")
                        .resizable()
                        .frame(width: 351, height: 351)
                    
                    VStack(alignment: .center, spacing: 10){
                        Text(currentPage == element ? OnBoardingScreenTitles[element] : "")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .lineLimit(5)
                            .padding(.horizontal, 20)
                            
                        
                        Text(currentPage == element ? onBoardingSubTitle[element] : "")
                            .font(.body)
                            .foregroundStyle(Color.subHeadlineTextColor)
                            .multilineTextAlignment(.center)
                            .lineLimit(5)
                            .padding(.horizontal, 25)
                        
                    }
                    
                    if currentPage == element {
                        Button(action: {
                            if currentPage == 2 {
                                goToHome = true
                            }
                            
                            if currentPage < 2 {
                                withAnimation {
                                    currentPage += 1
                                }
                            }
                        }, label: {
                            Text("Next")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .fontWeight(.bold)
                        })
                        .frame(width: 262, height: 55)
                        .background(Color.primaryBlueColor)
                        .cornerRadius(10)
                        .padding(.top, 60)
                    }
                    
                    
                }
                .navigationDestination(isPresented: $goToHome) {
                    tabViewScreen()
                }
                
            }
        }
        .toolbarRole(.editor)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    if currentPage > 0 {
                        withAnimation {
                            currentPage -= 1
                        }
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .foregroundStyle(Color.gray)
                }
                .opacity(currentPage == 0 ? 0 : 1)
                

            }
        }
    }
}

#Preview {
    OnboardingScreens()
   
}
