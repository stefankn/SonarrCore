//
//  CalendarDates.swift
//  
//
//  Created by Stefan Klein Nulent on 07/09/2019.
//

import Foundation

public struct CalendarDates: Decodable {
    
    // MARK: - Properties
    
    public let dates: [CalendarDate]
    
    
    // MARK: - Construction
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        var episodesInCalendar: [Date: [Episode]] = [:]
        let episodes = try container.decode([Episode].self)

        episodes.forEach { episode in
            if let airDate = episode.airDateUtc {
                let dateKey = Calendar.current.startOfDay(for: airDate)
                if !episodesInCalendar.keys.contains(dateKey) {
                    episodesInCalendar[dateKey] = []
                }
                
                episodesInCalendar[dateKey]?.append(episode)
            }
        }
        
        dates = episodesInCalendar.map{ CalendarDate(date: $0.0, episodes: $0.1) }
    }
}
