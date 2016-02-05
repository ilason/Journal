//
//  EntryDetailViewController.swift
//  myJournal
//
//  Created by Alex Retter on 2/4/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!

    @IBAction func saveButton(sender: AnyObject) {
    
        let entry = Entry(title: titleTextField.text!, bodyText: bodyTextView.text)
        EntryController.sharedInstance.addEntry(entry)
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        print(EntryController.sharedInstance.entriesArray)
        print(entry.title)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
