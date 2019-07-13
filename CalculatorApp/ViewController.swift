//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Ahmet Mohammed on 7/13/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    var numOnScreen: Double = 0;
    var prevNum: Double = 0;
    var doMath = false
    var operation = 0;


    
    @IBAction func nums(_ sender: UIButton) {
        if doMath == true {
            lbl.text = String(sender.tag-1)
            numOnScreen = Double(lbl.text!)!
            doMath = false
        } else {
            lbl.text = lbl.text! + String(sender.tag-1)
            numOnScreen = Double(lbl.text!)!
            
        }
        
        
        
    }
    
    @IBAction func operationBtns(_ sender: UIButton) {
        
        
        
        if lbl.text != "" && sender.tag != 11 && sender.tag != 16 {
            prevNum = Double(lbl.text!)!
            
            if sender.tag == 12 {
                lbl.text = "/"
                
            }
            else if sender.tag == 13 {
                lbl.text = "x"

                
            }
            else if sender.tag == 14 {
                lbl.text = "-"

                
            }
            else if sender.tag == 15 {
                lbl.text = "+"

                
            }
            operation = sender.tag
            doMath = true;
        }
        else if sender.tag == 16 {
            if operation == 12 {
                lbl.text = String(prevNum / numOnScreen)
                
            }
            else if operation == 13 {
                lbl.text = String(prevNum * numOnScreen)
                
            }
            else if operation == 14 {
                lbl.text = String(prevNum - numOnScreen)
                
            }
            else if operation == 15 {
                lbl.text = String(prevNum + numOnScreen)
                
            }
        }
        else if sender.tag == 11 {
            lbl.text = ""
            prevNum = 0
            numOnScreen = 0
            operation = 0
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

