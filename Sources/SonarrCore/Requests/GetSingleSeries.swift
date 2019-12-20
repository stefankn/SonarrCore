//
//  GetSingleSeries.swift
//  
//
//  Created by Stefan Klein Nulent on 05/10/2019.
//

import Foundation

public struct GetSingleSeries: Request {
    
    // MARK: - Types
    
    public typealias Response = Series
    
    
    
    // MARK: - Properties
    
    let id: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/series/\(id)" }
    
    
    
    // MARK: - Construction
    
    public init(id: Int) {
        self.id = id
    }
}
