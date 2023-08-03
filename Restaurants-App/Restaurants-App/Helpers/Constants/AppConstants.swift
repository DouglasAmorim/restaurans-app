//
//  AppConstants.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 03/08/23.
//

import Foundation

class AppConstants {
    static let shared = AppConstants()
    
    func getGooglePlaceApiKey() -> String {
        var keys: NSDictionary?
        
        if let path = Bundle.main.path(forResource: "keys", ofType: "plist") {
            keys = NSDictionary(contentsOfFile: path)
            
            let key = keys?["google_places_api_key"] as? String
            
            return key ?? ""
        }
        
        return ""
    }
}
