//
//  FRUITS_SwiftUIApp.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 10/06/23.
//

import SwiftUI

@main
struct FRUITS_SwiftUIApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
