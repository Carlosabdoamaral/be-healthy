//
//  Be_HealthyApp.swift
//  Be Healthy
//
//  Created by Carlos Amaral on 11/07/22.
//

import SwiftUI

@main
struct Be_HealthyApp: App {
    @ObservedObject var appModel = AppModel.shared
    
    var body: some Scene {
        WindowGroup {
            if (appModel.isAuthenticated) {
                TabView {
                    ClientView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    ClientSettingsView()
                        .tabItem {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                }
            } else {
                AuthView()
            }
        }
    }
}
