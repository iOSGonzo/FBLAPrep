//
//  signUpViewController.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/2/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class signUpViewController: UIViewController{
    
    @IBOutlet weak var signUpUsernameField: UITextField!
    @IBOutlet weak var signUpEmailField: UITextField!
    @IBOutlet weak var signUpPasswordField: UITextField!
    
    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpPressed(_ sender: Any){
        
        guard let username = signUpUsernameField.text else{
            return
        }
        guard let email = signUpEmailField.text else{
            return
        }
        guard let password = signUpPasswordField.text else{
            return
        }
        
        
        Auth.auth().createUser(withEmail: email, password: password) { user, error in
            if error == nil && user != nil{
                print("User created!")
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                
                changeRequest?.commitChanges { error in
                    if error == nil {
                        print("User display name changed!")
                        self.dismiss(animated: true, completion: nil)
                    } else{
                        print("ERROR: COULD NOT CHANGE DISPLAY NAME:(")
                    }
                }
            }else{
                print("Error!")
            }
        }
    }
    
}
