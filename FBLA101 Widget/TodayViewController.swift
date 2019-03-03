//
//  TodayViewController.swift
//  FBLA101 Widget
//
//  Created by Gonzalo Birrueta on 3/2/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit
import NotificationCenter

    var categoryNumber = 0

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!

    
    var businessEtiquetteTipsWidget = ["Be on time.","Be prepared.","Treat people equally.","Always return calls.","Thank people twice.","Dress appropriately.","Take responsibility for your mistakes.","Focus on the people you are with.","Give Respect to Everyone."]
    
    var softSkillsWidget = ["Strong Work Ethic: Are you motivated and dedicated to getting the job done, no matter what? Will you be conscientious and do your best work?","Positive Attitude: Are you optimistic and upbeat? Will you generate good energy and good will?","Communication Skills: Are you both verbally articulate and a good listener? Can you make your case and express your needs in a way that builds bridges with colleagues, customers and vendors?","Time Management: Do you know how to prioritize tasks and work on a number of different projects at once? Will you use your time on the job wisely?","Problem-Solving Skills: Are you resourceful and able to creatively solve problems that will inevitably arise? Will you take ownership of problems or leave them for someone else?","Acting as a Team Player: Will you work well in groups and teams? Will you be cooperative and take a leadership role when appropriate?"]
    
    var selfEsteemWidget = ["Groom yourself.","Dress nicely.","Think positive.","Kill negative thoughts.","Get to know yourself.","Act positive.","Be kind and generous.","Speak slowly.","Stand tall.","Set a small goal and achieve it. And go on from there.","Change a small habit.","Focus on solutions.","Smile","Volunteer","Exercise","Empower yourself with knowledge."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        randomCategory()
        if categoryNumber == 0{
            label.text = businessEtiquetteTipsWidget.randomElement()
            categoryLabel.text = "Business Etiquette"
            
        } else if
            categoryNumber == 1{
            label.text = softSkillsWidget.randomElement()
            categoryLabel.text = "Soft Skills"
        } else if
            categoryNumber == 2{
            label.text = selfEsteemWidget.randomElement()
            categoryLabel.text = "Self Esteem"
        }

    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func randomCategory(){
        categoryNumber = Int.random(in: 0 ... 2)
    }
    
    
    @IBAction func changeText(_ sender: Any) {
        randomCategory()
        if categoryNumber == 0{
            label.text = businessEtiquetteTipsWidget.randomElement()
            categoryLabel.text = "Business Etiquette"
            
        } else if
            categoryNumber == 1{
            label.text = softSkillsWidget.randomElement()
            categoryLabel.text = "Soft Skills"
        } else if
            categoryNumber == 2{
                label.text = selfEsteemWidget.randomElement()
                categoryLabel.text = "Self Esteem"
            }
    }
    
}
