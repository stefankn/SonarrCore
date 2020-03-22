//
//  DeleteSeries.swift
//  
//
//  Created by Stefan Klein Nulent on 22/03/2020.
//

import Foundation

public struct DeleteSeries: Request {
    
    // MARK: - Types
    
    public typealias Response = [String: String]
    
    
    
    // MARK: - Properties
    
    let id: Int
    let deleteFiles: Bool
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/series/\(id)" }
    public var httpMethod: HTTPMethod { .delete }
    
    
    
    // MARK: - Construction
    
    public init(_ series: Series, deleteFiles: Bool) {
        self.id = series.id
        self.deleteFiles = deleteFiles
    }
}
