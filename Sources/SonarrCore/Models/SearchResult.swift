//
//  SearchResult.swift
//  
//
//  Created by Stefan Klein Nulent on 10/09/2019.
//

import Foundation

public struct SearchResult: Decodable, Hashable {
    
    // MARK: - Properties
    
    public let title: String
    public let titleSlug: String
    public let overview: String?
    public let year: Int
    public var poster: String? { imagePath(for: .poster) }
    
    let tvdbId: Int
    let images: [Image]
    let seasons: [SearchResultSeason]
    

    
    // MARK: - Private Functions
        
    private func imagePath(for type: ImageType) -> String? {
        return images.filter({ $0.coverType == type }).first?.url
    }
}
