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
    
    //var sampleData = [String]()
    var sampleData = (0..<100).map{"Cell \($0)"}
    
    //var sampleData = (0..<100).map({(index: Int) -> String in return "Cell \(index)"} )
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        for index in 0..<100 {
//            sampleData.append("Cell \(index)")
//        }
        
        let entry = JournalEntry(date: Date(),content:  "David" )
        print(entry)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return sampleData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)
        
        cell.textLabel?.text = sampleData[indexPath.row]
        
        return cell
        
    }
    
   

}
