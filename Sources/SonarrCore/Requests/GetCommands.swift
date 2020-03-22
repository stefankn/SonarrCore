//
//  GetCommands.swift
//  
//
//  Created by Stefan Klein Nulent on 20/03/2020.
//

import Foundation

public struct GetCommands: Request {
    
    // MARK: - Types
    
    public typealias Response = [CommandResult]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/command" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
