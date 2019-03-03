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
        
        if let user = Auth.auth().currentUser{
            self.performSegue(withIdentifier: "goHome", sender: self)
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = loginEmailField.text else{
            return
        }
        guard let password = loginPasswordField.text else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) {user, error in
            if error == nil && user != nil{
                print("logged in")
                self.performSegue(withIdentifier: "goHome", sender: self)
            } else{
                sender.shake()
                print("error")
            }
            
        }
        
    }
    
    
    @IBAction func ContinueAsGuestPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goHome", sender: self)
        guestUser = true
    }
    
}
