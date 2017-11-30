//
//  newSubjectViewController.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/6/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class addSubject : UIViewController
{

 
    var temp  = Subject()
    var delegate : SubjectTansferable?
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
       
   
    }
    override func viewDidLoad()
    
    {
         self.title = "New Subject"
         userInput_Name?.becomeFirstResponder()
    }
    
    @IBOutlet weak var userInput_Name: UITextField? = nil
 
    
    
    @IBAction func submitSubject(_ sender: Any)
    {
       
        temp.setName(name: (userInput_Name?.text!)!)
        delegate?.alterSubjectList(object : temp)
        delegate?.reload()
        self.navigationController?.popViewController(animated: true)

    }

   
}
