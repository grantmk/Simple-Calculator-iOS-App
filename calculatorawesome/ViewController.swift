//
//  ViewController.swift
//  calculatorawesome
//
//  Created by grant on 27/01/2016.
//  Copyright © 2016 grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func button1Click(sender: UIButton) {
        numberButtonClicked(1)
    }
    @IBAction func button2Click(sender: UIButton) {
        numberButtonClicked(2)
    }
    @IBAction func button3Click(sender: UIButton) {
        numberButtonClicked(3)
    }
    @IBAction func button4Click(sender: UIButton) {
        numberButtonClicked(4)
    }
    @IBAction func button5Click(sender: UIButton) {
        numberButtonClicked(5)
    }
    @IBAction func button6Click(sender: UIButton) {
        numberButtonClicked(6)
    }
    @IBAction func button7Click(sender: UIButton) {
        numberButtonClicked(7)
    }
    @IBAction func button8Click(sender: UIButton) {
        numberButtonClicked(8)
    }
    @IBAction func button9Click(sender: UIButton) {
        numberButtonClicked(9)
    }
    @IBAction func button0Click(sender: UIButton) {
        numberButtonClicked(0)
    }
    
    @IBAction func buttonPlusClick(sender: UIButton) {
        operatorClicked("plus")
    }
    @IBAction func buttonMinusClick(sender: UIButton) {
        operatorClicked("minus")
    }
    @IBAction func buttonMultiplyClick(sender: UIButton) {
        operatorClicked("multiply")
    }
    @IBAction func buttonDivideClick(sender: UIButton) {
        operatorClicked("divide")
    }
    @IBAction func equalsButtonClicked(sender: UIButton) {
        numberTwo = displayLabel.text!
        if (oper == "plus") {
            let answer = Int(numberOne)! + Int(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "minus") {
            let answer = Int(numberOne)! - Int(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "multiply") {
            let answer = Int64(numberOne)! * Int64(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "divide") {
            let answer = Double(numberOne)! / Double(numberTwo)!
            displayLabel.text = String(answer)
        }
        numberOne = ""
        numberTwo = ""
        oper = ""
        lastPressNumber = false
    }
    
    
    //Function fires after number button clicked
    func numberButtonClicked(number: Int) {
        if (lastPressNumber) {
            displayLabel.text = displayLabel.text! + String(number)
        }
        else {
            displayLabel.text = String(number)
        }
        lastPressNumber = true
    }
    
    //function to keep track of multiploier
    func operatorClicked (op: String) {
        oper = op
        lastPressNumber = false
        numberOne = displayLabel.text!
    }
    
    var lastPressNumber: Bool = true
    var oper: String = ""
    var numberOne: String = ""
    var numberTwo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

