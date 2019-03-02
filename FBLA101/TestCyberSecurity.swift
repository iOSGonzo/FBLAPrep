//
//  TestCyberSecurity.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/28/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit


class TestCyberSecurity: UIViewController{
    
    let questions = ["Which one of the following exposures associated with the spooling of sensitive reports for offline printing could be considered the most serious?","What is the Biba security model concerned with?","The Information Technology Security Evaluation Criteria (ITSEC) was written to address which one of the following that the Orange Book did not address?","What is a locking device that prevents unauthorized unplugging of cables from computer devices called?","Which one of the following is not a method to protect objects and the data within the objects?"]
    
    let answers = [["other unauthorized copies of reports could be printed","sensitive data may be read by operators","data cannot be altered without authorization","output would be lost in case of system failure"],["integrity","confidentiality","reliability","availability"],["integrity and availability","integrity and confidentiality","confidentiality and availability","accessibility and confidentiality"],["cable trap","door delay","slot locks","preset locks"],["data mining","layering","abstraction","data hiding"]]
    
    
    var currentQuestion = 0
    var correctAnswerPlacement:UInt32 = 0

    
    //IBOUTLETS on TEST page
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var correctPopup: UIImageView!
    @IBOutlet weak var incorrectPopup: UIImageView!
    

    //  currentProgress stores the amount of parts the progress bar is split into, as well as the current progress the bar is at
    let currentProgress = Progress(totalUnitCount: 5)
    
    
    @IBAction func action(_ sender: UIButton){
        if (sender.tag == Int(correctAnswerPlacement)){
            
            self.currentProgress.completedUnitCount += 1
            let progressFloat = Float(self.currentProgress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
            
            print("CORRECT")
            
            currentScore += 1
            print("currently your currentScore is " + String(currentScore) + "/" + String(maxPossibleScore))

            correctPopup.isHidden = false
            
//          Correct popup with bounce in animation and shrink out
            correctPopup.transform = CGAffineTransform(scaleX: 0, y: 0)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.correctPopup.transform = .identity
            }) {(success) in
                UIView.animate(withDuration: 0.3,
                               animations: {
                                self.correctPopup.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                },
                               completion: { _ in
                                UIView.animate(withDuration: 0.3) {
                                    self.correctPopup.transform = CGAffineTransform(scaleX: 0, y: 0)
                                }
                })
            }
            
        } else{
            
            self.currentProgress.completedUnitCount += 1
            let progressFloat = Float(self.currentProgress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
            
            print("WRONG")
            print("currently your currentScore is " + String(currentScore) + "/" + String(maxPossibleScore))
            
            incorrectPopup.isHidden = false
            
            //incorrect popup with bounce in animation and shrink out
            incorrectPopup.transform = CGAffineTransform(scaleX: 0, y: 0)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.incorrectPopup.transform = .identity
            }) {(success) in
                UIView.animate(withDuration: 0.3,
                               animations: {
                                self.incorrectPopup.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                },
                               completion: { _ in
                                UIView.animate(withDuration: 0.3) {
                                    self.incorrectPopup.transform = CGAffineTransform(scaleX: 0, y: 0)
                                }
                })
            }
        }
        
        if (currentQuestion != questions.count){
            newQuestion()
        } else if(currentQuestion >= questions.count){
            print("DONE!")
            performSegue(withIdentifier: "finishedTest", sender: nil)
            globalTestsTaken += 1
            globalTotalPointsPossible += 5
            globalTotalPoints += Double(currentScore)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentQuestion = 0
        newQuestion()
        
        
//      Styling for progress bar
        progressView.layer.cornerRadius = 7
        progressView.clipsToBounds = true
        progressView.layer.sublayers![1].cornerRadius = 7
        progressView.subviews[1].clipsToBounds = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
//      reset to first question and reset progress bar
        currentQuestion = 0
        newQuestion()
        currentScore = 0
        
        self.currentProgress.completedUnitCount = 0
        let progressFloat = Float(self.currentProgress.fractionCompleted)
        self.progressView.setProgress(progressFloat, animated: true)
    }
    
    func newQuestion(){
        questionLabel.text = questions[currentQuestion]
        
        
        correctAnswerPlacement = arc4random_uniform(3)+1
        
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...4{
            button = view.viewWithTag(i) as! UIButton
            if(i == Int(correctAnswerPlacement)){
                button.setTitle(answers[currentQuestion][0], for: .normal)
                button.titleLabel?.textAlignment = NSTextAlignment.center
            } else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                button.titleLabel?.textAlignment = NSTextAlignment.center
                x += 1
            }
        }
        currentQuestion += 1
    }
}
