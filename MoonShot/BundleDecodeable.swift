//
//  BundleDecodeable.swift
//  MoonShot
//
//  Created by Shah Md Imran Hossain on 16/4/23.
//

import Foundation

extension Bundle {
    func decode<GenericType: Codable>(_ file: String) -> GenericType {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        // for formating dates
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(GenericType.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded 
    }
}
