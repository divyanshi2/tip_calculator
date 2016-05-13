//
//  ViewController.swift
//  tip_calculator
//
//  Created by Divyanshi Dwivedi - Vendor on 5/9/16.
//  Copyright © 2016 Divyanshi Dwivedi - Vendor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totallabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    
    }
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
    
    let bill = Double(billField.text!)! ?? 0
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
     let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
        
       
    
    }

}

