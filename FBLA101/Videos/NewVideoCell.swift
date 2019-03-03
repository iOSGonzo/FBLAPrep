//
//  NewVideoCell.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/17/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

protocol videoCellDelegate {
    func didTapWatchNow(url: String)
}


class NewVideoCell: UITableViewCell{
    
    @IBOutlet weak var videoThumbnail: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    var videoItem: Video!
    var delegate: videoCellDelegate?
    
    func setVideo(video: Video){
        videoItem = video
        videoThumbnail.image = video.image
        videoTitle.text = video.title
    }
    
    
    @IBAction func watchNowTapped(_ sender: Any) {
        delegate?.didTapWatchNow(url: videoItem.url)
        globalVideosWatched += 1
    }
    
    
}
