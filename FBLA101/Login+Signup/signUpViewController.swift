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
    
    //outlets for the username, email and password fields
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
    
    //when the create account button is pressed, check if the user, email and password fields are filled out. Then attempt to create account with those credientials, if everything goes well, account is created and you will be taken to login screen. If not, the create account button will shake indicating something is wrong.
    @IBAction func signUpPressed(_ sender: UIButton){
        
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
                        self.dismiss(animated: true, completion: nil)
                    } else{
                        sender.shake()
                    }
                }
            }else{
                sender.shake()
            }
        }
    }
    
    //if continue as guest is pressed, continue home and set the value guestUser to true.
    @IBAction func ContinueAsGuestPressed2(_ sender: UIButton) {
        performSegue(withIdentifier: "goHome2", sender: self)
        guestUser = true
        
    }
    
}
