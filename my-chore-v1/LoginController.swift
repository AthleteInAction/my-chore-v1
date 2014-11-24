//
//  LoginController.swift
//  my-chore-v1
//
//  Created by Randy Schriefer on 11/23/14.
//  Copyright (c) 2014 Wambl. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var passwordTXT: UITextField!
    @IBOutlet weak var usernameTXT: UITextField!
    @IBOutlet weak var errorTXT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorTXT.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitTPD(sender: AnyObject) {
        
        PFUser.logInWithUsernameInBackground(usernameTXT.text, password: passwordTXT.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                
                // LOGIN WORKED
                self.errorTXT.hidden = true
                self.performSegueWithIdentifier("main_from_login", sender: self)
                
            } else {
                
                // LOGIN FAILED
                self.errorTXT.hidden = false
                
            }
        }
        
    }
    
}
