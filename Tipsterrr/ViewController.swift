//
//  ViewController.swift
//  Tipsterrr
//
//  Created by Sarah Khalid on 2015-09-26.
//  Copyright © 2015 Sarah Khalid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    

        // This is the function that gets run when the view is shown on the screen.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipAmountLabel.text="$0.00"
        totalLabel.text="$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.23]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billAmountField.text!).doubleValue
        var tipAmount = billAmount * tipPercentage
        var total = billAmount + tipAmount
        
        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
        
        print(tipControl.selectedSegmentIndex)
        
    }


}

