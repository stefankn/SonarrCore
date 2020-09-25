//
//  Release.swift
//  
//
//  Created by Stefan Klein Nulent on 05/09/2020.
//

import Foundation

public struct Release: Decodable, Comparable {

    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case guid
        case quality
        case age
        case indexer
        case indexerId
        case title
        case publishDate
        case isRejected = "rejected"
        case rejections
    }
    
    
    
    // MARK: - Properties
    
    public let guid: String
    public let quality: Quality
    public let age: Int
    public let indexer: String
    public let indexerId: Int
    public let title: String
    public let publishDate: Date?
    public let isRejected: Bool
    public let rejections: [String]
    
    public var rejection: String {
        rejections.joined(separator: "\n")
    }
    
    
    
    // MARK: - Functions
    
    // MARK: Comparable Functions
    
    public static func < (lhs: Release, rhs: Release) -> Bool {
        lhs.age < rhs.age
    }
    
    public static func == (lhs: Release, rhs: Release) -> Bool {
        lhs.guid == rhs.guid
    }
}
