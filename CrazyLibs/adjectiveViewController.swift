//
//  adjectiveViewController.swift
//  CrazyLibs
//
//  Created by Chris Snyder on 7/23/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class adjectiveViewController: UIViewController, UITextFieldDelegate {

    //MARK: - IBOutlets
    @IBOutlet weak var adjectiveTextField: UITextField!

    //MARK: - Properties
    var obtainedValue: String!
    var secondPassedValue: String!
    var passedAdjective: String!

    //MARK: - VC Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveTextField.delegate = self


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "final" {
            let finalVC = segue.destinationViewController as! finalViewController
            secondPassedValue = obtainedValue
            finalVC.finalValue = secondPassedValue
            passedAdjective = adjectiveTextField.text
            finalVC.adjectiveValue = passedAdjective
            
        }
    }

    //MARK: - Text Field Delegates
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    // Get rid of text field by touching on screen
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }



}
