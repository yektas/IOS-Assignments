//
//  ViewController.swift
//  HW
//
//  Created by Sercan Yektaş on 07/10/2017.
//  Copyright © 2017 Sercan Yektaş. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Assignment 1
    func methodOverloaded(x : String, y : String  ){
        debugPrint("\(x) - \(y)")
    }
    
    func methodOverloaded(x : Int, y : Int){
        debugPrint("\(x) - \(y)")
    }
    // Assignment 1
    
    
    // Assignment 2
    func errorHappened(defaultMessage : String = "An error occured"){
        
        debugPrint("Message: \(defaultMessage)")
    }
    // Assignment 2
    
    
    // Assignment 3
    func showMeList (number : Int, list : String ... ){
        for item in list{
            debugPrint("Number : \(number), More: \(item)")
        }
    }
    // Assignment 3
    
    
    // Assignment 4
    func ignoringExternalParameterName(_ paramName : String){
        debugPrint("Haha, I ignored it. - \(paramName) ")
    }
    // Assignment 4
    
    
    // Assignment 5
    func operationOnNumbers(_ x: Int, _ y : Int){
        
        func doubleTheValue(_ value: Int ) -> Int{
            return value * 2
        }
        let newValue = x + y
        let result = doubleTheValue(newValue)
        debugPrint("Result : \(result)")
    }
    // Assignment 5
    
    
    // Assignment 6
    func recursiveFunction(_ startingNumber: Int){
        var number = startingNumber
        
        if number > 0 {
            number -= 1
            recursiveFunction(number)
        }
    }
    // Assignment 6
    
    
    // Assignment 7
    typealias myString = String
    func usingMyVariableType(_ x: myString){
        debugPrint("I used myString type but this is the real variable type: \(type(of: x))")
    }
    // Assignment 7
    
    // Assignment 8
    func firstFunction(_ function:()->()){
        function()
    }
    func secondFunction(){
        debugPrint("This is the output of second function")
    }
    // Assignment 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        methodOverloaded(x: "String 1", y: "String 2")
        methodOverloaded(x: 1, y: 3)
        
        errorHappened()
        errorHappened(defaultMessage: "This is our custom message")
        
        showMeList(number: 5, list: "Apple", "Orange", "Banana")
        
        ignoringExternalParameterName("Good job ignoring")
        
        operationOnNumbers(5, 6)
        
        recursiveFunction(5)
        
        usingMyVariableType("Testing")
        
        firstFunction(secondFunction)
    }
    
    
    
}

