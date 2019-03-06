//
//  JournalTableViewController.swift
//  MAP18IOs_Journal
//
//  Created by David Svensson on 2019-03-06.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    
    let cellIdentity = "JournalEntryCell"
    let showJournalSegueId = "showJournal"
    let addJournalEntrySegueId = "createJournalEntry"
    
    let journal = Journal()
    
    //var sampleData = [String]()
    //var sampleData = (0..<100).map{"Cell \($0)"}
    
    //var sampleData = (0..<100).map({(index: Int) -> String in return "Cell \(index)"} )
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        for index in 0..<100 {
//            sampleData.append("Cell \(index)")
//        }
        
        for index in 0..<3 {
            let entry = JournalEntry(date: Date(),content:  "Entry \(index)" )
            journal.add(entry: entry)
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return journal.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)
        
        if let entry = journal.entry(index: indexPath.row) {
            cell.textLabel?.text = "\(entry)"
        }
        
        return cell
        
    }
    
   

}
