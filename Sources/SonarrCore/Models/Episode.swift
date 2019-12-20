//
//  Episode.swift
//  
//
//  Created by Stefan Klein Nulent on 05/09/2019.
//

import Foundation

public struct Episode: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case number = "episodeNumber"
        case title
        case season = "seasonNumber"
        case overview
        case isMonitored = "monitored"
        case hasFile
        case airDate
        case airDateUtc
        case file = "episodeFile"
        case series
        case isDownloading = "downloading"
        case absoluteEpisodeNumber
    }
    
    
    
    // MARK: - Properties
    
    let id: Int
    
    public let number: Int
    public let title: String
    public let season: Int
    public let overview: String?
    public var isMonitored: Bool
    public let hasFile: Bool
    public let airDate: String?
    public let airDateUtc: Date?
    public let file: EpisodeFile?
    public let series: Series?
    public let isDownloading: Bool?
    public let absoluteEpisodeNumber: Int?
    
    
    
    // MARK: - Functions

    // MARK: Encodable Functions
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(number, forKey: .number)
        try container.encode(title, forKey: .title)
        try container.encode(season, forKey: .season)
        try container.encode(overview, forKey: .overview)
        try container.encode(isMonitored, forKey: .isMonitored)
        try container.encode(hasFile, forKey: .hasFile)
        try container.encode(airDate, forKey: .airDate)
        try container.encode(airDateUtc, forKey: .airDateUtc)
        try container.encode(isDownloading, forKey: .isDownloading)
        try container.encode(absoluteEpisodeNumber, forKey: .absoluteEpisodeNumber)
    }
}
