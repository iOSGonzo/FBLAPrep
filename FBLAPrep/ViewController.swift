//
//  ViewController.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 1/29/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func competitiveEventsClicked(_ sender: UIButton) {
        
    }
    
    //-----//
    
    var competitiveEvents = ["Accounting I","Accounting II","Advertising","Agribusiness","Business Calculations","Business Communication","Business Law","Computer Problem Solving","Cyber Security","Economics","Health Care Administration","Insurance & Risk Management","Intro to Business","Intro to Business Communication","Intro to Business Procedures","Intro to FBLA","Intro to Financial Math","Intro to Information Technology","Intro to Parliamentary Procedure","Journalism","Networking Concepts","Organizational Leadership","Personal Finance","Political Science","Securities & Investments"]
    
    
    //------//
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 70;
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return competitiveEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NewTableViewCell

//        cell?.competitiveEventButtonLook.layer.cornerRadius = 6.5
        
//        cell?.competitiveEventButtonLook.layer.applySketchShadow(
//            color: .black,
//            alpha: 0.5,
//            x: 0,
//            y: 2,
//            blur: 4,
//            spread: 0)
        
//        cell?.heightAnchor.constraint(equalToConstant: 55.0).isActive = true
        
        
        cell?.textLabel?.text = competitiveEvents[indexPath.row]
        cell?.cellDelegate = self
        
        
        cell?.index = indexPath
        return cell!
    }
    
    
//  DYNAMIC SEGUES USING SWITCH CASE
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        let selectedCompetition = competitiveEvents[indexPath.row]
        
        //cases to move to different segues
        switch selectedCompetition{
        case selectedCompetition: self.performSegue(withIdentifier: selectedCompetition, sender: self)
            break
        default:
            break
        }
    }
    
}

extension ViewController: TableViewNew{
    func onClickCell(index: Int) {
        print("\(competitiveEvents[index]) is clicked")
    }
}
