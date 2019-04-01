//
//  ViewTableViewCell.swift
//  LongTextLable
//
//  Created by Rish on 4/1/19.
//  Copyright © 2019 Rish. All rights reserved.
//

import UIKit

class ViewTableViewCell: UITableViewCell {
    
    
    @IBOutlet var fixedHeightCon : NSLayoutConstraint!
    @IBOutlet var graterHeightCon : NSLayoutConstraint!
    @IBOutlet weak var lblText : UILabel!
    @IBOutlet weak var btnMore: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
       
   
     
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
