//
//  VKgroupFinderCell.swift
//  VKapp
//
//  Created by max on 01.11.17.
//  Copyright © 2017 Maksim Bakharev. All rights reserved.
//

import UIKit

class VKgroupFinderCell: UITableViewCell {
    
    @IBOutlet weak var otherGroupName: UILabel!
    @IBOutlet weak var otherGroupQuantity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
