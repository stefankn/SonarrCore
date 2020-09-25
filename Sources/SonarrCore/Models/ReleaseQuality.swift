//
//  ReleaseQuality.swift
//  
//
//  Created by Stefan Klein Nulent on 07/09/2020.
//

import Foundation

extension Release {
    
    public struct Quality: Decodable {
        
        // MARK: - Types
        
        enum CodingKeys: String, CodingKey {
            case quality
            case isProper = "proper"
        }
        
        
        
        // MARK: - Properties
        
        public let quality: Profile
        public let isProper: Bool?
        
        public var name: String {
            if isProper == true {
                return "\(quality.name) (Proper)"
            } else {
                return quality.name
            }
        }
    }
}
