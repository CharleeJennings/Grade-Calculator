//
//  Welcome View.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/28/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//

import Foundation
import UIKit


class Welcome : UIViewController
{
    @IBOutlet var BackgroundView: background!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Continue: UIButton!
    
    
    override func viewDidLoad()
    {
    
      Label.center.y = 0
        UIView.animate(withDuration: 1) {
            self.Label.center = self.BackgroundView.center
        }
    }
    
    
    

}

