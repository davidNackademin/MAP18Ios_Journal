//
//  JournalEntry.swift
//  MAP18IOs_Journal
//
//  Created by David Svensson on 2019-03-06.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import Foundation

class JournalEntry: CustomStringConvertible {
    
    
    
    var date: Date
    var content: String
    let dateFormater = DateFormatter()
    
    var description: String {
        return dateFormater.string(from: date)
    }
    
    init(date: Date, content: String) {
        self.date = date
        self.content = content
        dateFormater.dateFormat = "yyyy-MM-dd"
    }
    
}
