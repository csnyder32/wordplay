//
//  finalViewController.swift
//  CrazyLibs
//
//  Created by Chris Snyder on 7/23/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class finalViewController: UIViewController {

    var finalValue: String!
    var adjectiveValue: String!

    @IBOutlet weak var finalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        finalLabel.text = "\(finalValue) is \(adjectiveValue)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
