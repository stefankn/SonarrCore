//
//  QueueItemStatus.swift
//  
//
//  Created by Stefan Klein Nulent on 23/03/2020.
//

import Foundation

public enum QueueItemStatus: String, Decodable {
    case downloading = "Downloading"
    case paused = "Paused"
}
