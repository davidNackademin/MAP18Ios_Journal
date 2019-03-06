//
//  NewJournalEntryViewController.swift
//  MAP18IOs_Journal
//
//  Created by David Svensson on 2019-03-06.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journaEntryText: UITextView!
    
    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        journaEntryText.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        let entry = JournalEntry(date: Date(), content: journaEntryText.text)
        journal?.add(entry: entry)
        dismiss(animated: true, completion: nil)
    }
    
}
