//
//  Series.swift
//  
//
//  Created by Stefan Klein Nulent on 03/09/2019.
//

import Foundation

public struct Series: Decodable, Hashable {

    // MARK: - Properties
    
    let imdbId: String
    let images: [Image]
    
    public let id: Int
    public let title: String
    public let sortTitle: String
    public let overview: String
    public let status: SeriesStatus
    public let qualityProfileId: Int
    public let seasons: [Season]
    
    public var poster: String? { imagePath(for: .poster) }
    public var fanart: String? { imagePath(for: .fanart) }
    public var banner: String? { imagePath(for: .banner) }
    
    
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
