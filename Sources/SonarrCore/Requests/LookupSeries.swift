//
//  LookupSeries.swift
//  
//
//  Created by Stefan Klein Nulent on 04/10/2019.
//

import Foundation

public struct LookupSeries: Request {
    
    // MARK: - Types
    
    public typealias Response = [SearchResult]
    
    
    
    // MARK: - Properties
    
    let term: String
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/series/lookup" }
    
    
    
    // MARK: - Construction
    
    public init(term: String) {
        self.term = term
    }
}
