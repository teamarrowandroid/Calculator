//
//  ViewController.swift
//  NewCalculator
//
//  Created by harpreet singh on 2017-01-17.
//  Copyright © 2017 harpreet singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    var oper:String="0"
    var a:Double=0
    var b:Double=0
    var result:Double=0
    @IBAction func typenumbers(_ sender: UIButton) {
        if(sender.tag==11)
        {
            if(display.text?.contains("."))!
            {
                
            }
            else{
                display.text=display.text! + "."
            }
        }
        else{
            display.text=display.text! + String(sender.tag-1)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func operation(_ sender: UIButton)
    {
        if sender.tag==17
        {
            display.text=""
            a=0
            b=0
        }
         if(sender.tag==12)    //Addition
        {
            a=Double(display.text!)!
            oper="+"
            display.text=""
        }
        if(sender.tag==13)     //Subtraction
        {
            a=Double(display.text!)!
            oper="-"
            display.text=""
        }
        if(sender.tag==14)     //Division
        {
            a=Double(display.text!)!
            oper="/"
            display.text=""
        }
        if(sender.tag==15)     //Multiplication
        {
            a=Double(display.text!)!
            oper="*"
            display.text=""
        }
        if(sender.tag==16)
        {
            if(oper=="0")
            {
                
            }
            else if(oper=="+")   //Addition
            {
               //var n=display.text?.substring(from: "+".index(after: <#T##String.Index#>))
               b=Double(display.text!)!
              
                
                 result=a+b
                
                
                 display.text=String(result)
                
                
            }
            else if(oper=="-")   //Subraction
            {
                b=Double(display.text!)!
                result=a-b
                display.text=String(result)
                
            }
            else if(oper=="/")   //Division
            {
                b=Double(display.text!)!
                if(b==0)
                {
                     display.text="Not a number"+"   "
                }
                else{
                result=a/b
                display.text=String(result)
                }
                
            }
            else if(oper=="*")    //Multiplication
            {
                b=Double(display.text!)!
                result=a*b
                display.text=String(result)
                
            }
        }

        
    }
  
}

