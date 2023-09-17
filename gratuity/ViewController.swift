//
//  ViewController.swift
//  gratuity
//
//  Created by Nico Ihle on 17.09.23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var switchButtonTen: UISwitch!
    @IBOutlet weak var switchButtonTwenty: UISwitch!
    @IBOutlet weak var switchButtonThirty: UISwitch!
    @IBOutlet weak var outputPrice: UILabel!
    @IBOutlet weak var textFieldTip: UITextField!
    private var selectedTip:Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        textFieldTip.delegate = self
//        textFieldTip.keyboardType = .numberPad
    }
    
    

    @IBAction func switchButtonten(sender: UISwitch) {
        if(sender.isOn == true) {
            selectedTip = 10.0
            switchButtonTwenty.isEnabled = false
            switchButtonThirty.isEnabled = false
        } else {
            selectedTip = 0.0
            switchButtonTwenty.isEnabled = true
            switchButtonThirty.isEnabled = true
        }
    }
    
    @IBAction func switchButtontwenty(_ sender: UISwitch) {
        if(sender.isOn == true) {
            selectedTip = 20.0
            switchButtonTen.isEnabled = false
            switchButtonThirty.isEnabled = false
        } else {
            selectedTip = 0.0
            switchButtonTen.isEnabled = true
            switchButtonThirty.isEnabled = true
        }
    }
    
    @IBAction func switchButtonThirty(_ sender: UISwitch) {
        if(sender.isOn == true) {
            selectedTip = 30.0
            switchButtonTen.isEnabled = false
             switchButtonTwenty.isEnabled = false
        } else {
            selectedTip = 0.0
            switchButtonTen.isEnabled = true
            switchButtonTwenty.isEnabled = true
        }
    }
    
    @IBAction func calcButton(_ sender: UIButton) {
        print(selectedTip)
        if let mValue = textFieldTip.text, let doubleValue = Double(mValue) {
            let calcProcent = doubleValue / 100
            let getTipValue = calcProcent * selectedTip
            let result = getTipValue + doubleValue
            
            outputPrice.text = String(result)
            outputPrice.textColor = UIColor.green
            view.endEditing(true)
        } else {
            outputPrice.text = "Eingabe ist ungültig"
            outputPrice.textColor = UIColor.red
            view.endEditing(true)
        }
    }
}
