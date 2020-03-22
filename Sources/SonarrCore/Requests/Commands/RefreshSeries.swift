//
//  RefreshSeries.swift
//
//
//  Created by Stefan Klein Nulent on 16/03/2020.
//

import Foundation

public struct RefreshSeries: Command {
    
    // MARK: - Properties
    
    public let seriesId: Int?
    
    
    // MARK: Command Properties
    
    public let name: CommandName = .refreshSeries
    
    
    
    // MARK: - Construction
    
    public init(_ series: Series?) {
        self.seriesId = series?.id
    }
}
