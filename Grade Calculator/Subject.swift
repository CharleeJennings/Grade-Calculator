//
//  Subject.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/1/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit

class Subject
{
    
    var segmentArray = [Grades]()
    var nameOfSubject : String?
    var actualAverage : Double?
    

    

    
    func calculateAverage() -> Double
    {
        var i : Int = 0
        while ( i < segmentArray.count)
        {
           actualAverage! += segmentArray[i].getAverage()
            i += 1
        
        }
    
        return actualAverage!
    }
    
    func setName( name : String )
    {
        nameOfSubject = name
      
    }
    
    func getName() ->String
    {
      return nameOfSubject!
    }
    
    

}

