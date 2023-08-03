//
//  AppDelegate.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 03/08/23.
//

import Foundation
import SwiftUI
import GooglePlaces

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let key = AppConstants.shared.getGooglePlaceApiKey()
        GMSPlacesClient.provideAPIKey(key)
        
        print("App did launch \(key)")
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig: UISceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }
    
}
