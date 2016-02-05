//
//  Entry.swift
//  myJournal
//
//  Created by Alex Retter on 2/4/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    var timestamp: NSDate?
    var title: String
    var bodyText: String
    
    init(timestamp: NSDate = NSDate(), title: String, bodyText:String) {
        
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
}

    func ==(lhs: Entry, rhs: Entry) -> Bool {

        return lhs.timestamp == rhs.timestamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
}

