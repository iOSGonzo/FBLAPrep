//
//  SettingsViewController.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/1/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit
import MessageUI
import Firebase


class SettingsViewController: UITableViewController, MFMailComposeViewControllerDelegate{
    
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var LogoutLabel: UILabel!
    
    @IBOutlet weak var SignInLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = Auth.auth().currentUser{
            emailLabel.text = Auth.auth().currentUser?.email
            usernameLabel.text = Auth.auth().currentUser?.displayName
            guestUser = false
            
        }
        if guestUser == true{
            SignInLabel.isHidden = false
            LogoutLabel.isHidden = true
        } else {
            SignInLabel.isHidden = true
            LogoutLabel.isHidden = false
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 2 && indexPath.row == 0 {
            let mailComposeViewController = configureMailController()
            if MFMailComposeViewController.canSendMail(){
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                showMailError()
            }
        }
        
        if indexPath.section == 3 && indexPath.row == 0{
            try! Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["support@fbla101.com"])
        mailComposerVC.setSubject("Bug Report")
        
        return mailComposerVC
    }
    
    func showMailError(){
        let sendMailErrorAlert = UIAlertController(title: "Error", message: "Unable to send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
