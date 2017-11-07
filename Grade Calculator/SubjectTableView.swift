//
//  SubectUIViewController.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/3/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//


import UIKit

class Main_Subject : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var SubjectList = [Subject]()
    var cellidentifier = "Subject"
     override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
     func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SubjectList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! SubjectCell
        cell.name.text = SubjectList[indexPath.row].getName()
        return cell
    }
  
}
