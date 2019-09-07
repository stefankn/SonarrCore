//
//  GetEpisodes.swift
//  
//
//  Created by Stefan Klein Nulent on 06/09/2019.
//

import Foundation

public struct GetEpisodes: Request {
    
    // MARK: - Types
    
    public typealias Response = [Episode]
    
    
    
    // MARK: - Properties
    
    let seriesId: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/episode" }
    
    
    
    // MARK: - Construction
    
    public init(seriesId: Int) {
        self.seriesId = seriesId
    }
}
