//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Oraz Atakishiyev on 12.01.2023.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> [T] {
        // 1. Locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        // 3. Create a property for the decoded data
        let decoder = JSONDecoder()
        // 4.
        guard let loaded = try? decoder.decode([T].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        // 5.
        return loaded
    }
}
