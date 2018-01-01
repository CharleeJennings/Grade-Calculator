//
//  Transferable.swift
//  
//
//  Created by Charles Jennings on 11/7/17.
//

import Foundation
import UIKit


protocol SubjectTansferable
{
    var SubjectList : [Subject] { get set }
    func addSubjectList (object : Subject)
    func replaceSubject(object : Subject , _ Index : Int)
    
    
}


