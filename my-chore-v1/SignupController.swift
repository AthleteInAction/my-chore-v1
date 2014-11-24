//
//  SignupController.swift
//  my-chore-v1
//
//  Created by Randy Schriefer on 11/23/14.
//  Copyright (c) 2014 Wambl. All rights reserved.
//

import UIKit

class SignupController: UIViewController {

    @IBOutlet weak var emailTXT: UITextField!
    @IBOutlet weak var usernameTXT: UITextField!
    @IBOutlet weak var passwordTXT: UITextField!
    @IBOutlet weak var passwordConfirmTXT: UITextField!
    @IBOutlet weak var errorTXT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitTPD(sender: AnyObject) {
        
        var user = PFUser()
        user.username = usernameTXT.text
        user.password = passwordTXT.text
        user.email = emailTXT.text
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                
                // SIGNUP WORKED
                NSLog("SIGNED UP!")
                self.errorTXT.text = ""
                
            } else {
                
                // SIGNUP FAILED
                NSLog("SIGNUP FAILED")
                self.errorTXT.text = "Signup failed!"
                let errorString = error.userInfo
                
            }
        }
        
    }
    
    @IBAction func cancelTPD(sender: AnyObject) {
        
        self.performSegueWithIdentifier("login_from_signup", sender: self)
        
    }
    
}