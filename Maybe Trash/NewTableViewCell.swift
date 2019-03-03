//
//  NewTableViewCell.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/18/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

protocol TableViewNew {
    func onClickCell(index: Int)
}


class NewTableViewCell: UITableViewCell {

//    @IBOutlet weak var competitiveEventButtonLook: UIButton!
//    @IBOutlet weak var tableViewCellLabel: UILabel!
    
    
    var cellDelegate: TableViewNew?
    var index: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    cellDelegate?.onClickCell(index: (index?.row)!)
    

}


