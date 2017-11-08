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
 
 
    var temp  = Subject()
    var delegate : SubjectTansferable?
    
    @IBOutlet weak var userInput_Name: UITextField!
 
    
    
    @IBAction func submitSubject(_ sender: Any)
    {
        
        temp.setName(name: userInput_Name.text!)
        delegate?.addtoList(object : temp)
        
        self.navigationController?.popViewController(animated: true)
 
    }

   
}
