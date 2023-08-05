//
//  AppDelegate.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 03/08/23.
//

import Foundation
import SwiftUI
import GooglePlaces
import FirebaseCore
import FirebaseRemoteConfig

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var remoteConfig: RemoteConfig?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        self.setupFirebase()
        self.remoteConfig = RemoteConfig.remoteConfig()
        self.fetchRemoteConfig()
        
        print("App did launch")
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig: UISceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }
    
    private func setupGooglePlaces() {
        DispatchQueue.main.async {
            let key = AppConstants.shared.placesApiKey
            GMSPlacesClient.provideAPIKey(key)
        }
    }
    
    private func setupFirebase() {
        FirebaseApp.configure()
    }
    
    private func fetchRemoteConfig() {
        guard let remoteConfig = self.remoteConfig else { return }
        
        remoteConfig.fetch(withExpirationDuration: 0) { (status, error) in
            guard error == nil else { return }
            
            remoteConfig.activate { [weak self] _, _ in
                guard let self = self else { return }
                AppConstants.shared.placesApiKey = remoteConfig.configValue(forKey: "places_api_key").stringValue ?? ""
                self.setupGooglePlaces()
            }
        }
    }
}
