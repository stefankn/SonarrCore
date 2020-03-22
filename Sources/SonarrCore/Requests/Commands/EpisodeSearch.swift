//
//  EpisodeSearch.swift
//  
//
//  Created by Stefan Klein Nulent on 16/03/2020.
//

import Foundation

public struct EpisodeSearch: Command {
    
    // MARK: - Properties
    
    public let episodeIds: [Int]
    
    
    // MARK: Command Properties
    
    public let name: CommandName = .episodeSearch
    
    
    
    // MARK: - Construction
    
    public init(_ episode: Episode) {
        self.episodeIds = [episode.id]
    }
}
