//
//  VideoModel.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
