//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    //Declare and initialize to some default values
    var operand1:Double = -1.1
    var _operator: Character = " "
    var operand2:Double = -1.1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Button5Clicked(_ sender: UIButton) {
        //assign 5 to the display label.
        
        displayLabelOutlet.text = displayLabelOutlet.text! + "5"
        
        if operand1 == -1.1{
            operand1 = 5
        }
        else{
            operand2 = 5
        }
            
    }
    
    @IBAction func ButtonPlusClicked(_ sender: UIButton) {
        //assign + to the display label.
        displayLabelOutlet.text = displayLabelOutlet.text! + "+"
        
        if _operator == " "{
            _operator = "+"
        }
    }
    
    @IBAction func Button3Clicked(_ sender: UIButton) {
        //assign 3 to the display label.
        displayLabelOutlet.text = displayLabelOutlet.text! + "3"
        
        if operand2 == -1.1{
            operand2 = 3
        }
        else{
            operand1 = 3
        }
    }
    
    @IBAction func ButtonEqClicked(_ sender: UIButton) {
        //assign = to the display label.
        displayLabelOutlet.text = displayLabelOutlet.text! + "="
        
        if(_operator == "+"){
            displayLabelOutlet.text = displayLabelOutlet.text! + "\(operand1+operand2)"
        }
    }
    

}

