//
//  ContentViewModel.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/18/23.
//

import Combine
import Foundation

final class ModelData: ObservableObject {
 
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}





//T is the placeholder meaning unknown Type. in <T:Decodable>
//Returning a T means any type of data.
func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in the main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}
