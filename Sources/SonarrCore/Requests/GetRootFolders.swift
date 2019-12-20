//
//  GetRootFolders.swift
//  
//
//  Created by Stefan Klein Nulent on 05/10/2019.
//

import Foundation

public struct GetRootFolders: Request {
    
    // MARK: - Types
    
    public typealias Response = [RootFolder]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/rootfolder" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
