//
//  SeasonSearch.swift
//
//
//  Created by Stefan Klein Nulent on 16/03/2020.
//

import Foundation

public struct SeasonSearch: Command {
    
    // MARK: - Properties
    
    public let seriesId: Int
    public let seasonNumber: Int
    
    
    // MARK: Command Properties
    
    public let name: CommandName = .seasonSearch
    
    
    
    // MARK: - Construction
    
    public init(series: Series, season: Season) {
        self.seriesId = series.id
        self.seasonNumber = season.number
    }
}
