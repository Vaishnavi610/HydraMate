//
//  customeTabBar.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

//This page for custom tab bar 

import SwiftUI

struct customeTabBar: View {
    @Binding var selectedPage : selectedTabs
    
    var body: some View {
        HStack(spacing: 40, content: {
            
            Button(action: {
                withAnimation {
                    selectedPage = .home
                }
            }, label: {
                Image(selectedPage == .home ? "home" : "inactiveHome")
                    .resizable()
                    .frame(width: 36, height: 36)
            })
            
            Button(action: {
                withAnimation {
                    selectedPage = .statistics
                }
            }, label: {
                Image(selectedPage == .statistics ? "graph" : "inactiveGraph")
                    .resizable()
                    .frame(width: 36, height: 36)
            })
            
            Button(action: {
                withAnimation {
                    selectedPage = .settings
                }
            }, label: {
                Image(selectedPage == .settings ? "menu" : "inactiveMenu")
                    .resizable()
                    .frame(width: 36, height: 36)
            })
        })
        .background(content: {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 253, height: 65)
                .foregroundStyle(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 5)
        })
    }
}

#Preview {
    customeTabBar(selectedPage: .constant(.home))
}
