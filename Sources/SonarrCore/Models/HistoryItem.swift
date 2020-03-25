//
//  HistoryItem.swift
//  
//
//  Created by Stefan Klein Nulent on 25/03/2020.
//

import Foundation

public struct HistoryItem: Decodable {
    
    // MARK: - Types
    
    private enum CodingKeys: String, CodingKey {
        case sourceTitle
        case episode
        case series
        case date
        case quality
    }
    
    private enum QualityKeys: String, CodingKey {
        case quality
    }
    
    
    
    // MARK: - Properties
    
    public let sourceTitle: String
    public let episode: Episode
    public let series: Series
    public let rawDate: String
    public let profile: Profile
    
    public var date: Date? {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate, .withFullTime, .withFractionalSeconds]
        return formatter.date(from: rawDate)
    }
    
    
    
    // MARK: - Construction
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
       
        sourceTitle = try values.decode(String.self, forKey: .sourceTitle)
        episode = try values.decode(Episode.self, forKey: .episode)
        series = try values.decode(Series.self, forKey: .series)
        rawDate = try values.decode(String.self, forKey: .date)
        
        let quality = try values.nestedContainer(keyedBy: QualityKeys.self, forKey: .quality)
        profile = try quality.decode(Profile.self, forKey: .quality)
    }
}
