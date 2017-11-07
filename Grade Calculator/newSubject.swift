//
//  newSubjectViewController.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/6/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit

class SubjectView : UIViewController
{
    var temp = Subject()
    @IBOutlet weak var userInput_Name: UITextField!
 
    
    
    @IBAction func submitSubject(_ sender: Any)
    {
        
        temp.setName(name: userInput_Name.text!)
        let tableV = Main_Subject()
        tableV.SubjectList.append(temp)
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
       if segue.identifier == "backtoSubject"
       {
        let controller = segue.destination as? Main_Subject
        controller?.SubjectList.append(temp)
       }
    }
}
