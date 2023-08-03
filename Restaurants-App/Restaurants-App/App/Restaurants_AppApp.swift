//
//  Restaurants_AppApp.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 03/08/23.
//

import SwiftUI

@main
struct Restaurants_AppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
