//
//  LandMark.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/17/23.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    let id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    private var imageName: String
    
    //Computed image property to upload the image from the JSON data
    var image: Image {
        Image(imageName)
    }
    
    
    
    
    //coordinates is of type Coordinates
    private var coordinates: Coordinates
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    //Nested Coordinates struct that represents the JSON data
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
