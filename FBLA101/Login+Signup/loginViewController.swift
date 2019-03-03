//
//  loginViewController.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/2/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class loginViewController: UIViewController{
    
    // outlets for the email and password field
    @IBOutlet weak var loginEmailField: UITextField!
    @IBOutlet weak var loginPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //if user is logged in and opens app, go straight to home
        if let user = Auth.auth().currentUser{
            self.performSegue(withIdentifier: "goHome", sender: self)
        }
    }
    
    //when the login button is pressed, check if the email and password fields are filled out. Then attempt to sign in with those credientials, if credientials are in database --> log in , if not, --> shake login button to indicate incorrect credientials.
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = loginEmailField.text else{
            return
        }
        guard let password = loginPasswordField.text else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) {user, error in
            if error == nil && user != nil{
                self.performSegue(withIdentifier: "goHome", sender: self)
            } else{
                sender.shake()
            }
        }
    }
    
    //if continue as guest is pressed, continue home and set the value guestUser to true.
    @IBAction func ContinueAsGuestPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goHome", sender: self)
        guestUser = true
    }
}
