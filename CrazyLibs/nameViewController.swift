//
//  nameViewController.swift
//  CrazyLibs
//
//  Created by Chris Snyder on 7/23/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class nameViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Properties
    var passedValue: String?

    @IBOutlet weak var nameTextField: UITextField!

    //MARK: - VC Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - IBActions
    @IBAction func nextButtonPressed(sender: AnyObject) {
    }
    

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "next" {
            let secondVC = segue.destinationViewController as! adjectiveViewController
            passedValue = nameTextField.text
            secondVC.obtainedValue = passedValue
            
        }
    }

    // MARK: - Text Field Delegates
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    // Get rid of text field by touching on screen
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


}
