//
//  UpdateEpisode.swift
//  
//
//  Created by Stefan Klein Nulent on 18/10/2019.
//

import Foundation

public struct UpdateEpisode: Request {
    
    // MARK: - Types

    public typealias Response = Episode
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let monitored: Bool
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/episode/\(id)" }
    public var httpMethod: HTTPMethod { .put }
    
    
    // MARK: - Construction
    
    public init(episode: Episode, isMonitored: Bool) {
        id = episode.id
        monitored = isMonitored
    }
}
