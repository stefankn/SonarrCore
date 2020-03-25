//
//  GetHistory.swift
//  
//
//  Created by Stefan Klein Nulent on 25/03/2020.
//

import Foundation

public struct GetHistory: Request {
    
    // MARK: - Types
    
    public typealias Response = HistoryItems
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/history" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
