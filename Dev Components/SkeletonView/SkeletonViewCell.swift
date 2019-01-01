//
//  SkeletonViewCell.swift
//  Dev Components
//
//  Created by Mulloy, Charles on 12/26/18.
//  Copyright © 2018 Pat Mulloy. All rights reserved.
//

import UIKit
import SkeletonView

class SkeletonViewCell: UITableViewCell {

    static let reuseIdentifier = "Skeleton View Cell"
    
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
