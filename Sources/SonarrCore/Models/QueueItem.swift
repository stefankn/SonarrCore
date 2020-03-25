//
//  QueueItem.swift
//  
//
//  Created by Stefan Klein Nulent on 23/03/2020.
//

import Foundation

public struct QueueItem: Decodable {
    
    // MARK - Properties
    
    public let id: Int
    public let series: Series
    public let episode: Episode
    public let title: String
    public let size: Int
    public let sizeleft: Int
    public let timeleft: String?
    public let estimatedCompletionTime: String?
    public let status: QueueItemStatus
    
    public var progress: Float {
        Float(size - sizeleft) / Float(size)
    }
}
