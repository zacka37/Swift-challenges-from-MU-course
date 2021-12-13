//
//  CalculatorViewController.swift
//  FinalProject
//
//  Created by Zack Augustine on 12/4/21.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var calculatorResult: UILabel!
    @IBOutlet weak var calculator_User_Input: UILabel!
    
    var userInput:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aCFunction()
        // Do any additional setup after loading the view.
    }
    
    func aCFunction(){
        userInput = ""
        calculator_User_Input.text = ""
        calculatorResult.text = ""
    }

    @IBAction func AC(_ sender: Any) {
        aCFunction()
    }
    
    @IBAction func Back(_ sender: Any) {
        if(!userInput.isEmpty)
        {
            userInput.removeLast()
            calculator_User_Input.text = userInput
        }
    }
    
    func add_User_Input(value: String){
        userInput = userInput + value
        calculator_User_Input.text = userInput
    }
    
    @IBAction func Button(_ sender: Any) {
        // % Button
        add_User_Input(value: "%")
    }
    
    @IBAction func Divide(_ sender: Any) {
        add_User_Input(value: "/")
    }
    
    @IBAction func Multiply(_ sender: Any) {
        add_User_Input(value: "*")
    }
    
    @IBAction func Subtract(_ sender: Any) {
        add_User_Input(value: "-")
    }
    
    @IBAction func Add(_ sender: Any) {
        add_User_Input(value: "+")
    }
    
    @IBAction func Equal(_ sender: Any) {
        let statement = NSExpression(format: userInput)
        let equal_statement = statement.expressionValue(with: nil, context: nil) as! Double
        let result = equalResolt(result: equal_statement)
        calculatorResult.text = result
    }

    
    func equalResolt(result: Double) -> String{
        if (result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }else{
            return String(format: "%.2f", result)
        }
    }
    @IBAction func DecimalPoint(_ sender: Any) {
        add_User_Input(value: ".")
    }
    
    @IBAction func Zero(_ sender: Any) {
        add_User_Input(value: "0")
    }
    
    @IBAction func Three(_ sender: Any) {
        add_User_Input(value: "3")
    }
    
    @IBAction func Two(_ sender: Any) {
        add_User_Input(value: "2")
    }
    
    @IBAction func Onw(_ sender: Any) {
        add_User_Input(value: "1")
    }
    
    @IBAction func Six(_ sender: Any) {
        add_User_Input(value: "6")
    }
    
    @IBAction func Five(_ sender: Any) {
        add_User_Input(value: "5")
    }
    
    @IBAction func Four(_ sender: Any) {
        add_User_Input(value: "4")
    }
    
    @IBAction func Nine(_ sender: Any) {
        add_User_Input(value: "9")
    }
    
    @IBAction func Eight(_ sender: Any) {
        add_User_Input(value: "8")
    }
    
    @IBAction func Seven(_ sender: Any) {
        add_User_Input(value: "7")
    }
}

