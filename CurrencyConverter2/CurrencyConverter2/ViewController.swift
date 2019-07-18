//
//  ViewController.swift
//  CurrencyConverter2
//
//  Created by Isobel Hall on 10/07/2019.
//  Copyright © 2019 Isobel Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
        
        //Above are the calculations to convert dollar amount enetered into field
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        poundLabel.text = "0.00"
        yenLabel.text = "0.00"
        euroLabel.text = "0.00"
        inputTextField.text = ""
    }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
       }
    
        // Called when 'return' key is pressed
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }

        // Called when user taps outside the text field
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
}
