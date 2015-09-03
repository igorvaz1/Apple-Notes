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
        
        //Setting navigation bar to transparent
        self.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationBar.shadowImage = UIImage()
        //self.navigationBar.translucent = true
        
        //Setting navigatin bar button's color to yellow
        self.navigationBar.tintColor = UIColor(red: 0.9333, green: 0.8431, blue: 0.4784, alpha: 1.0)
        
        
    }
    
}