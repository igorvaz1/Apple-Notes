//
//  FoldersViewController.swift
//  Notes
//
//  Created by Igor Vaz on 02/09/15.
//  Copyright (c) 2015 Igor Vaz. All rights reserved.
//

import UIKit

class FoldersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Variables
    
    @IBOutlet var tableView: UITableView!
    
    let arrayFolders = ["Todas as iCloud", "Go", "Notes"]
    
    
    // MARK: System methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor(patternImage: UIImage(named: "Note Sheet")!)
        
    }
    
    
    // MARK: Table view methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayFolders.count
        
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let title: String
        
        if section == 0 {
            
            title = "icloud"
            
        } else {
            
            title = "error"
        }
        
        return title
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        let row = indexPath.row
        
        var backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 0.9333, green: 0.8431, blue: 0.4784, alpha: 1.0)
        
        cell.textLabel?.text = arrayFolders[row]
        cell.selectedBackgroundView = backgroundView
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let selectedFolder = arrayFolders[indexPath.row]
        let identifier = "Folders To List"
        
        let destinationVC = ListViewController()
        destinationVC.folder = selectedFolder  

        self.performSegueWithIdentifier(identifier, sender: nil)
    }
    


}

