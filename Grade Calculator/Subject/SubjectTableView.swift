//
//  SubectUIViewController.swift
//  Grade Calculator
//
//  Created by Charles Jennings on 11/3/17.
//  Copyright © 2017 Charles Jennings. All rights reserved.
//


import UIKit

class SubjectTableView:  UIViewController , UITableViewDelegate, UITableViewDataSource ,SubjectTansferable
{
    @IBOutlet weak var tableView: UITableView!
    var SubjectList = [Subject]()
    var cellidentifier = "Subject"
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        self.performSegue(withIdentifier: "toSubjectData" , sender: Any?.self)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SubjectList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! SubjectCell
        cell.name.text =  SubjectList[indexPath.row].getName()
        cell.contentView.backgroundColor = UIColor.clear
        return cell
    }
    
    func addSubjectList( object : Subject )
    {
        SubjectList.append(object)
        tableView.reloadData()
    }
    
    func replaceSubject( object : Subject, _ Index : Int)
    {
        SubjectList[Index] = object
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidLoad()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Subjects"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toAddSubject"
        {
            let addSubject : addSubject = segue.destination as! addSubject
            addSubject.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
  
  
}
