//
//  CommandResult.swift
//  
//
//  Created by Stefan Klein Nulent on 16/03/2020.
//

import Foundation

public struct CommandResult: Decodable, Hashable {
    
    // MARK: - Properties
    
    public let id: Int
    public let name: CommandName
    public let state: String
}
