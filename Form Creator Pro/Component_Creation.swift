//
//  Component_Creation.swift
//  Form Creator Pro
//
//  Created by Eric Reese on 4/28/19.
//  Copyright © 2019 ReeseGames. All rights reserved.
//

import Foundation
import UIKit

//Creates components
//Includes all component creation libraries including multiple choice questions, fill in responses, true/false, drop down menus, and other components that would be involved in a form creator application
class Component_Creation {
    
    //Creates a drop down
    public static func addDropDown(screenSize: CGSize, question: String, choiceArray: [String]) {
        
    }
    
    //Creates a multiple choice question
    public static func addMultipleChoice(screenSize: CGSize, question: String, choiceArray: [String]) {
        
    }
    
    //Creates fill in responce question
    //Multiple values indicate multiple fields
    /*
     Requirements character array parameters explained:
     1) c - single character
     2) s - single string
     3) i - single integer value
     4) f - floating point value
     5) d - decimal value under 1
    */
    public static func addFillInResponse(screenSize: CGSize, question: String, requirements: [Character]) {
        for i in 0...requirements.count {
            switch requirements[i] {
                
                //Adds fill-in fields based on parameter values
                case "c": print("c")
                case "s": print("s")
                case "i": print ("i")
                case "f": print("f")
                case "d": print("d")
            default: print("error")
            }
        }
    }
}
