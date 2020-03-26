//
//  Series.swift
//  
//
//  Created by Stefan Klein Nulent on 03/09/2019.
//

import Foundation

public struct Series: Decodable, Hashable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case imdbId
        case images
        case id
        case title
        case sortTitle
        case overview
        case status
        case qualityProfileId
        case seasons
        case episodeCount
        case episodeFileCount
        case isMonitored = "monitored"
    }

    
    
    // MARK: - Properties
    
    let imdbId: String?
    let images: [Image]
    
    public let id: Int
    public let title: String
    public let sortTitle: String
    public let overview: String
    public let status: SeriesStatus
    public let qualityProfileId: Int
    public let seasons: [Season]
    public var episodeCount: Int?
    public var episodeFileCount: Int?
    public let isMonitored: Bool
    
    public var poster: String? { imagePath(for: .poster) }
    public var fanart: String? { imagePath(for: .fanart) }
    public var banner: String? { imagePath(for: .banner) }
    
    public var imdbURL: URL? {
        if let imdbId = imdbId {
            return URL(string: "https://www.imdb.com/title/\(imdbId)")
        } else {
            return nil
        }
    }
    
    
    
    // MARK: - Functions
    
    // MARK: Equatable Functions
    
    public static func == (lhs: Series, rhs: Series) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    
    // MARK: - Private Functions
    
    private func imagePath(for type: ImageType) -> String? {
        return images.filter({ $0.coverType == type }).first?.url
    }
}
