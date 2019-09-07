//
//  EpisodeFile.swift
//  
//
//  Created by Stefan Klein Nulent on 06/09/2019.
//

import Foundation

public struct EpisodeFile: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case quality
    }
    
    enum QualityKeys: String, CodingKey {
        case quality
    }
    
    
    
    // MARK: - Properties
    
    let id: Int
    public let profile: Profile
    
    
    
    // MARK: - Construction
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        
        let quality = try values.nestedContainer(keyedBy: QualityKeys.self, forKey: .quality)
        profile = try quality.decode(Profile.self, forKey: .quality)
    }
}
