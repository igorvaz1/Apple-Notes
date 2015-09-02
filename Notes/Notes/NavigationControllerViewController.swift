//
//  NavigationControllerViewController.swift
//  Notes
//
//  Created by Igor Vaz on 02/09/15.
//  Copyright (c) 2015 Igor Vaz. All rights reserved.
//

import UIKit

class NavigationControllerViewController: UINavigationController {
    
    override func viewDidLoad() {

        //Setting background image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Note Sheet")!)
        self.view.contentMode = UIViewContentMode.ScaleToFill
        
        //Setting navigation bar to transparent
        self.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationBar.shadowImage = UIImage()
        //self.navigationBar.translucent = true
        
        
    }
    
}