//
//  NearbyRestaurants.swift
//  Restaurants-App
//
//  Created by Douglas Amorim on 15/08/23.
//

import Foundation
import GooglePlaces
import SwiftUI

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    func GetNewPerson1() -> Self {
        return Person(name: "EPR") as! Self
    }
    
    func GetNewPerson2() -> Self {
        // **Error** below: Cannot convert return expression of type 'Person' to return type 'Self'
        return Person(name: "Bella")
    }
}

let person = Person(name: "King")

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

