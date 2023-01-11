//
//  FructusApp.swift
//  Fructus
//
//  Created by Oraz Atakishiyev on 10.01.2023.
//

import SwiftUI

@main
struct FructusApp: App {
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
