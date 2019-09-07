//
//  Episode.swift
//  
//
//  Created by Stefan Klein Nulent on 05/09/2019.
//

import Foundation

public struct Episode: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case number = "episodeNumber"
        case title
        case season = "seasonNumber"
        case overview
        case isMonitored = "monitored"
        case hasFile
        case airDateUtc
        case file = "episodeFile"
    }
    
    
    
    // MARK: - Properties
    
    let id: Int
    
    public let number: Int
    public let title: String
    public let season: Int
    public let overview: String?
    public let isMonitored: Bool
    public let hasFile: Bool
    public let airDateUtc: Date?
    public let file: EpisodeFile?
}
