//
//  HisotoryViewController.swift
//  edu.washington.benjas6.lifecounter
//
//  Created by Benjamin Shi on 1/30/19.
//  Copyright © 2019 Benjamin Shi. All rights reserved.
//

import UIKit

class HisotoryViewController: UIViewController {

    @IBOutlet weak var historyTextField: UITextView!
    
    var history : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextField.isEditable = false
        
        historyTextField.text = history
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToMian(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
}
