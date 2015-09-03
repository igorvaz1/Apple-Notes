//
//  ListViewController.swift
//  Notes
//
//  Created by Igor Vaz on 02/09/15.
//  Copyright (c) 2015 Igor Vaz. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Variables
    
    @IBOutlet var tableView: UITableView!
    var folder: String!
    var arrayNotes = [Note]()

    // MARK: System methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.backgroundColor = UIColor(patternImage: UIImage(named: "Note Sheet")!)
        //arrayNotes = ["test"]
        //get data from CoreData and fill the array here!!!
        
        var note = Note()
        
        note.title = "My first note"
        note.content = "My first note"
        
        arrayNotes.append(note)
        
        if arrayNotes.isEmpty {
            
            //create "No notes view" here!!!
            
        }
        
    }
    
    // MARK: Table view methods
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        let row = indexPath.row
        
        var selectedBackgroundView = UIView()
        selectedBackgroundView.backgroundColor = UIColor(red: 0.9333, green: 0.8431, blue: 0.4784, alpha: 1.0)
        
        //cell.backgroundView = selectedBackgroundView
        
        //cell.textLabel?.text = arrayNotes[row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayNotes.count
        
    }
    
    
    
}
