//
//  LoactionModel.swift
//  Africa
//
//  Created by Oraz Atakishiyev on 15.01.2023.
//

import Foundation
import MapKit

struct NationalParkLoation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double

    // Computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
