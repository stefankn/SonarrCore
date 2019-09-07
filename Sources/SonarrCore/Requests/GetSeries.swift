//
//  GetSeries.swift
//  
//
//  Created by Stefan Klein Nulent on 03/09/2019.
//

import Foundation

public struct GetSeries: Request {
    
    // MARK: - Types
    
    public typealias Response = [Series]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/series" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
