//
//  videoViewController.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/19/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

class videoViewController: UIViewController{
    
    @IBOutlet weak var videoTableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createVideoArray()
    }
    
    
    func createVideoArray(){
        let video1 = Video(image: UIImage(named: "CyberThumb1")!, url: "https://youtu.be/bPVaOlJ6ln0", title: "Cybersecurity Crash Course")
        let video2 = Video(image: UIImage(named: "CyberThumb2")!, url: "https://youtu.be/_nVq7f26-Uo", title: "5 Laws of Cybersecruity")
        let video3 = Video(image: UIImage(named: "CyberThumb3")!, url: "https://youtu.be/-AkuKKJ8dN0", title: "Careers in Cybersecruity")
        let video4 = Video(image: UIImage(named: "CyberThumb4")!, url: "https://youtu.be/KQigJ17RlW0", title: "Cybersecurity Doc")
        let video5 = Video(image: UIImage(named: "CyberThumb5")!, url: "https://youtu.be/_GzE99AmAQU", title: "Cyber Attacks")
        let video6 = Video(image: UIImage(named: "CyberThumb6")!, url: "https://youtu.be/JdfmV2KW11I", title: "How it works: Cybersecurity")
        let video7 = Video(image: UIImage(named: "CyberThumb7")!, url: "https://youtu.be/xzDKM7eEweI", title: "Getting Started")
        
        videos.append(video1)
        videos.append(video2)
        videos.append(video3)
        videos.append(video4)
        videos.append(video5)
        videos.append(video6)
        videos.append(video7)
    }
    
}

extension videoViewController: videoCellDelegate {
    func didTapWatchNow(url: String) {
        let videoURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: videoURL)
        present(safariVC, animated: true, completion: nil)
    }
}


extension videoViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! NewVideoCell
        cell.setVideo(video: video)
        cell.delegate = self
        return cell
    }
}




