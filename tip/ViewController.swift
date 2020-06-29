//
//  ViewController.swift
//  tip
//
//  Created by Gargi Tawde on 6/28/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get Bill Amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // Calculate Tip and Total
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Update Tip Amount and Total
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    
}

