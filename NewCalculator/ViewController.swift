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
    var a:Double=0    //first number
    var b:Double=0    //second number
    var result:Double=0     //result
    @IBAction func typenumbers(_ sender: UIButton) {
        if(sender.tag==11)
        {
            if(display.text?.contains("."))!
            {
                //do nothing if decimal is already used!
            }
            else{
                display.text=display.text! + "."
            }
        }
        else{
            if display.text=="+" || display.text=="-" || display.text=="*" || display.text=="/"
            {
                display.text=""
            }
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
        
        //when "C" is used
        if sender.tag==17
        {
            display.text=""
            a=0
            b=0
        }
        // ############### when operation symbol is clicked
        
         if(sender.tag==12)    //Addition is
        {
            if display.text=="+" || display.text=="-" || display.text=="*" || display.text=="/"
            {
                display.text="+"
                oper="+"
            
            }
            else{
                a=Double(display.text!)!
                oper="+"
                display.text="+"
            }
        }
        else if(sender.tag==13)     //Subtraction
        {
            if display.text=="+" || display.text=="-" || display.text=="*" || display.text=="/"
            {
                display.text="-"
                oper="-"
                
            }
            else{
                a=Double(display.text!)!
                oper="-"
                display.text="-"
            }        }
        else if(sender.tag==14)     //Division
        {
            if display.text=="+" || display.text=="-" || display.text=="*" || display.text=="/"
            {
                display.text="/"
                oper="/"
                
            }
            else{
                a=Double(display.text!)!
                oper="/"
                display.text="/"
            }
        }
        else if(sender.tag==15)     //Multiplication
        {
            if display.text=="+" || display.text=="-" || display.text=="*" || display.text=="/"
            {
                display.text="*"
                oper="*"
                
            }
            else{
                a=Double(display.text!)!
                oper="*"
                display.text="*"
            }        }
        
        
         // ############### when "=" symbol is clicked
        
        
        
        if(sender.tag==16)
        {
            if(oper=="0")
            {
                
            }
            else if(oper=="+")   //Addition
            {
               //var n=display.text?.substring(from: "+".index(after: <#T##String.Index#>))
               b=Double(display.text!)!
              
                
                
                if a.description.contains(".") || b.description.contains(".")
                {
                     result=a+b
                     display.text=String(result)
                    
                }
                
                 else if !a.description.contains(".") || !b.description.contains(".")
                {
                    var re = a+b
                     display.text="no number"
                }
                
                
                
                
                
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

