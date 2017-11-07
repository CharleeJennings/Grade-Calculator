//
//  Grade.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/1/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit


class Grades
{
    var percentageOfTotalGrade : Double?
    var numOfGrades : Int?
    var gradesArray : [Double]?
    var cumPoints : Int?
    var average : Double?
    var incr : Int = 0
    
    func storeGrade ( cGrade : Double)
    {
        
        
    }
    
    func setPercentage( percent : Int) -> Double
    {
        return Double(percent) * 0.01 
    }
    func getPercentage ()-> Double
    {
        return percentageOfTotalGrade!
    }
    func getAverage() -> Double
    {
        return average!
    }
    
    
    
}
