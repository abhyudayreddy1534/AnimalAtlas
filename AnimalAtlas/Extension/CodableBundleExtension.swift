//
//  CodableBundleExtension.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //        1. Locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle") }
        
        //        2. Create a property for Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to loaad \(file) from bundle")
        }
        
        //        3. Create decoder
        let decoder = JSONDecoder()
        
        //        4. Create propety for decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //        5. return ready to use data
        return loaded
    }
}
