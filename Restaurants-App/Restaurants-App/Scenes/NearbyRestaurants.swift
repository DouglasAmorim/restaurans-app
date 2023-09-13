//
//  NearbyRestaurants.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 15/08/23.
//

import Foundation
import GooglePlaces
import SwiftUI


struct NearbyRestaurants: View {
    private var placesClient: GMSPlacesClient = GMSPlacesClient.shared()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .foregroundColor(.green)
        }
        .padding()
    }
}

struct NearbyRestaurants_Previews: PreviewProvider {
    static var previews: some View {
        NearbyRestaurants()
    }
}

