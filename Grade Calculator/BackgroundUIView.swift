//
//  addScreenUIView.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/17/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class background : UIView
{
    override func draw(_ rect: CGRect) {
        
        Backgrounds.drawBackgroundCanvas()
    }
}

@IBDesignable
class tableBackground : UIView
{
    override func draw(_ rect: CGRect) {
        Backgrounds.drawTableBackgroundCanvas()
    }
}
