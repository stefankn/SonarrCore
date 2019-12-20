//
//  GetCalendar.swift
//  
//
//  Created by Stefan Klein Nulent on 07/09/2019.
//

import Foundation

public struct GetCalendar: Request {
    
    // MARK: - Types
    
    public typealias Response = CalendarDates
    
    
    
    // MARK: - Properties
    
    public let start: Date
    public let end: Date?
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/calendar" }
    
    
    
    // MARK: - Construction
    
    public init(startDate: Date, endDate: Date? = nil) {
        start = startDate
        end = endDate
    }
}
