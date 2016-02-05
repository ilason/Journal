//
//  EntryController.swift
//  myJournal
//
//  Created by Alex Retter on 2/4/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    var entriesArray: [Entry]
    
    init() {
        
         entriesArray = []
    }
    
    func addEntry(entry:Entry) {
        
        entriesArray.append(entry)
    }
    
    func removeEntry(indexPath:NSIndexPath) {
        
        entriesArray.removeAtIndex(indexPath.row)
        
    }
}