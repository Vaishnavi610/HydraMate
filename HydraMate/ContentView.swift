//
//  ContentView.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 14/03/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationView {
            OnboardingScreens()
       }
    }

}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
