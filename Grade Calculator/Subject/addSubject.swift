//
//  newSubjectViewController.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/6/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit

class addSubject : UIViewController
{
    var temp = Subject()
    
    @IBOutlet weak var userInput_Name: UITextField!
 
    
    
    @IBAction func submitSubject(_ sender: Any)
    {
        
        temp.setName(name: userInput_Name.text!)
        let controller = SubjectTableView()
        controller.SubjectList.append(temp)
        
        
 
    }

   
}
