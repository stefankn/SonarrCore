//
//  Image.swift
//  
//
//  Created by Stefan Klein Nulent on 03/09/2019.
//

import Foundation

public struct Image: Decodable, Hashable {
    
    // MARK: - Properties
    
    public let coverType: ImageType
    public let url: String
}
