//
//  CalendarDate.swift
//  
//
//  Created by Stefan Klein Nulent on 07/09/2019.
//

import Foundation

public struct CalendarDate: Hashable, Comparable {
    
    // MARK: - Properties
    
    public let date: Date
    public let episodes: [Episode]
    public let isInCurrentMonth: Bool
    
    public var dayNumber: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter.string(from: date)
    }
    
    
    
    // MARK: - Construction
    
    public init(date: Date, episodes: [Episode] = [], isInCurrentMonth: Bool = true) {
        self.date = date
        self.episodes = episodes
        self.isInCurrentMonth = isInCurrentMonth
    }
    
    
    
    // MARK: - Functions
    
    // MARK: Equatable Functions

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.date == rhs.date
    }

    
    // MARK: Comparable Functions
    
    public static func < (lhs: CalendarDate, rhs: CalendarDate) -> Bool {
        return lhs.date < rhs.date
    }
    
    
    // MARK: Hashable Functions
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(date)
    }
}
