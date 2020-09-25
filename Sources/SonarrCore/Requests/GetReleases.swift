//
//  GetReleases.swift
//  
//
//  Created by Stefan Klein Nulent on 05/09/2020.
//

import Foundation

public struct GetReleases: Request {
    
    // MARK - Types
    
    public typealias Response = [Release]
    
    
    
    // MARK: - Properties
    
    public let episodeId: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/release" }
    
    
    
    // MARK: - Construction
    
    public init(episodeId: Int) {
        self.episodeId = episodeId
    }
}
