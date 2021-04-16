//
//  FRUITSApp.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 13.04.2021.
//

import SwiftUI

@main
struct FRUITSApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true //how view
    
    var body: some Scene {
        WindowGroup {
            //we are make logic what 1st view isOnboarding True or False if then we are press start button
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
