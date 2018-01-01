//
//  Grade.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/1/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit


class Assessments
{
    var numOfGrades : Int?
    var gradesArray : [Double]?
    var cumPoints : Int?
    var average : Double?
    var percentage : Double?
    

    func setPercentage( percent : Int) -> Double
    {
        return Double(percent) * 0.01 
    }
    func getPercentage ()-> Double
    {
        return percentage!
    }
    func getAverage() -> Double
    {
        return average!
    }
    
    
    
}
