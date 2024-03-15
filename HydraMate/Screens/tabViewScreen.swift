//
//  tabViewScreen.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import SwiftUI

struct tabViewScreen: View {
    
    @State var selectedPageIndex : selectedTabs = .home
    
    var body: some View {
        ZStack{
          
            
            Circle()
                .blur(radius: 40)
                .frame(width: 115, height: 119)
                .foregroundStyle(Color.shadowBallColor)
                .offset(x: -80, y: -300)
            
            Circle()
                .blur(radius: 40)
                .frame(width: 115, height: 119)
                .foregroundStyle(Color.shadowBallColor)
                .offset(x: 180, y: 200)
            
            switch selectedPageIndex {
            case .home :
                HomeViewScreen()
            case .statistics:
                statisticsViewScreen()
            case .settings:
                settingViewScreen()
            }
            
            customeTabBar(selectedPage: $selectedPageIndex)
                .padding(.top, UIScreen.main.bounds.height - 200)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    tabViewScreen()
}
