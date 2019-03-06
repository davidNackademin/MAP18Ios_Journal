//
//  Journal.swift
//  MAP18IOs_Journal
//
//  Created by David Svensson on 2019-03-06.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import Foundation

class Journal {
    
    private var entries = [JournalEntry]()
    
    //computed property
    var count: Int {
        return entries.count
    }
    
//    func count() -> Int {
//        return entries.count
//    }
    
    func add(entry: JournalEntry) {
        print("add: \(entry)")
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index <= entries.count {
            return entries[index]
        }
        
        return nil
    }
}
