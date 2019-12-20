//
//  AddSeries.swift
//  
//
//  Created by Stefan Klein Nulent on 05/10/2019.
//

import Foundation

public struct AddOptions: Encodable {
    
    // MARK: - Properties
    
    public let ignoreEpisodesWithFiles: Bool
    public let ignoreEpisodesWithoutFiles: Bool
    public let searchForMissingEpisodes: Bool
    
    
    
    // MARK: - Construction
    
    public init(ignoreEpisodesWithFiles: Bool = true, ignoreEpisodesWithoutFiles: Bool = true, searchForMissingEpisodes: Bool = false) {
        self.ignoreEpisodesWithFiles = ignoreEpisodesWithFiles
        self.ignoreEpisodesWithoutFiles = ignoreEpisodesWithoutFiles
        self.searchForMissingEpisodes = searchForMissingEpisodes
    }
}

public struct AddSeries: Request {
    
    // MARK: - Types
    
    public typealias Response = Series

    
    
    // MARK: - Properties
    
    let tvdbId: Int
    let title: String
    let titleSlug: String
    let qualityProfileId: Int
    let images: [Image]
    let seasons: [SearchResultSeason]
    let rootFolderPath: String
    let addOptions: AddOptions
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/series" }
    public var httpMethod: HTTPMethod { .post }
    
    
    
    // MARK: - Construction
    
    public init(_ searchResult: SearchResult, profile: Profile, rootFolder: RootFolder, options: AddOptions? = nil) {
        self.tvdbId = searchResult.tvdbId
        self.title = searchResult.title
        self.titleSlug = searchResult.titleSlug
        self.qualityProfileId = profile.id
        self.images = searchResult.images
        self.seasons = searchResult.seasons
        self.rootFolderPath = rootFolder.path
        self.addOptions = options ?? AddOptions()
    }
}
