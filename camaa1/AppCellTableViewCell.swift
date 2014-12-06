//
//  AppCellTableViewCell.swift
//  camaa1
//
//  Created by CK on 12/3/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit

class AppCellTableViewCell: UITableViewCell {

    @IBOutlet weak var appImage: UIImageView!
    @IBOutlet weak var appName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
