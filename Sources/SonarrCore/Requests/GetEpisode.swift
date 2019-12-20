//
//  GetEpisode.swift
//  
//
//  Created by Stefan Klein Nulent on 05/10/2019.
//

import Foundation

public struct GetEpisode: Request {
    
    // MARK: - Types

    public typealias Response = Episode
    
    
    
    // MARK: - Properties
    
    let id: Int
    
    
    // MARK: Request Properties

    public var endpoint: String { "/api/episode/\(id)" }
    
    
    
    // MARK: - Construction
    
    public init(id: Int) {
        self.id = id
    }
}
