//
//  CommandName.swift
//  
//
//  Created by Stefan Klein Nulent on 20/03/2020.
//

import Foundation

public enum CommandName: String, Codable {
    case episodeSearch = "EpisodeSearch"
    case missingEpisodeSearch = "MissingEpisodeSearch"
    case refreshSeries = "RefreshSeries"
    case rescanSeries = "RescanSeries"
    case rssSync = "RssSync"
    case seasonSearch = "SeasonSearch"
    case seriesSearch = "SeriesSearch"
}
