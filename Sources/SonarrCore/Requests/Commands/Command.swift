//
//  Command.swift
//  
//
//  Created by Stefan Klein Nulent on 16/03/2020.
//

import Foundation

public protocol Command: Request where Response == CommandResult {

    // MARK: - Properties
    
    var name: CommandName { get }
}

extension Command {

    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/command" }
    public var httpMethod: HTTPMethod { .post }
}
