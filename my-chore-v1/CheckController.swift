//
//  ViewController.swift
//  my-chore-v1
//
//  Created by Randy Schriefer on 11/23/14.
//  Copyright (c) 2014 Wambl. All rights reserved.
//

import UIKit

class CheckController: UIViewController {
    
//    var currentUser = PFUser.currentUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false)
        
        if currentUser != nil {
            
            self.performSegueWithIdentifier("main_from_check", sender: self)
            
        } else {
            
            self.performSegueWithIdentifier("login_from_check", sender: self)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

