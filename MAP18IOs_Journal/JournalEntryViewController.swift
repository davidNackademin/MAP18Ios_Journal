//
//  JournalEntryViewController.swift
//  MAP18IOs_Journal
//
//  Created by David Svensson on 2019-03-06.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContent: UITextView!
    
    var journalEntry : JournalEntry?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalEntryContent.text = journalEntry?.content
        
    }
    


}
