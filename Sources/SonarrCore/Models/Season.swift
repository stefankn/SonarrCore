//
//  Season.swift
//  
//
//  Created by Stefan Klein Nulent on 04/09/2019.
//

import Foundation

public struct Season: Decodable, Hashable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case number = "seasonNumber"
        case isMonitored = "monitored"
        case statistics
    }
    
    enum StatisticsKeys: String, CodingKey {
        case episodeFileCount
        case totalEpisodeCount
    }
    
    
    
    // MARK: - Properties
    
    public let number: Int
    public let isMonitored: Bool
    public var episodeFileCount = 0
    public var totalEpisodeCount = 0
    
    
    
    // MARK: - Construction
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        number = try values.decode(Int.self, forKey: .number)
        isMonitored = try values.decode(Bool.self, forKey: .isMonitored)
        
        if let statistics = try? values.nestedContainer(keyedBy: StatisticsKeys.self, forKey: .statistics) {
            episodeFileCount = try statistics.decode(Int.self, forKey: .episodeFileCount)
            totalEpisodeCount = try statistics.decode(Int.self, forKey: .totalEpisodeCount)
        }
    }
}
