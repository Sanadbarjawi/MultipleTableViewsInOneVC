//
//  SecondTableViewCell.swift
//  MultipleTableViewsInOneVC
//
//  Created by Sanad Barjawi on 7/30/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
