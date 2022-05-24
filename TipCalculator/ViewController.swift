//
//  ViewController.swift
//  TipCalculator
//
//  Created by Joao Victor Silva Anastacio on 2022-05-23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmountTextField: UITextField!
    @IBOutlet var tipIntroductionLabel: UILabel!
    @IBOutlet var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUiElements()
    }
    
    private func initializeUiElements() {
        tipIntroductionLabel.text = ""
        tipAmountLabel.text = ""
    }
    
    @IBAction func calculateTip(_ sender: UIButton) -> Void {
        if isTextFieldEmpty() == false {
            if billAmountTextField.text != nil {
                tipIntroductionLabel.text = "You should be tipped in:"
                tipAmountLabel.text = String(getTipAmountFromBill(bill: billAmountTextField.text!))
            }
        }
        
        // Case empty use one label to say that is required a value
        print("Is Empty")
    }
    
    private func isTextFieldEmpty() -> Bool {
        if billAmountTextField.hasText {
            return false
        } else {
            return true
        }
    }
    
    private func getTipAmountFromBill(bill billAmount: String) -> Double {
        guard let billAmountConverted = Double(billAmount) else { return 0.0 }
        return billAmountConverted * 0.15
    }
}

