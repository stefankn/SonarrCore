//
//  AddRelease.swift
//  
//
//  Created by Stefan Klein Nulent on 06/09/2020.
//

import Foundation

public struct AddRelease: Request {
    
    // MARK: - Types
    
    public typealias Response = Release
    
    
    
    // MARK: - Properties
    
    let guid: String
    let indexerId: Int
    
    
    // MARK: - Request Properties
    
    public var endpoint: String { "/api/release" }
    public var httpMethod: HTTPMethod { .post }
    
    
    
    // MARK: - Construction
    
    public init(_ release: Release) {
        guid = release.guid
        indexerId = release.indexerId
    }
}
