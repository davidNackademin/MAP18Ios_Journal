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
    let journalEntrySegueId = "showJournal"
    let newJournalEntrySegueId = "createJournalEntry"
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
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
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == journalEntrySegueId {
          if let destination = segue.destination as? JournalEntryViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell),
            let entry = journal.entry(index: indexPath.row) {
                destination.journalEntry = entry
            }
        }
        if segue.identifier == newJournalEntrySegueId {
            if let destination = segue.destination as? NewJournalEntryViewController {
                destination.journal = journal
            }
        }
    }
    
    

}
