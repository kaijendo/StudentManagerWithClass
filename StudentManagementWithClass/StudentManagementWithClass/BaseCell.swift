//
//  BaseCell.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/26/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import UIKit

class BaseCell: UITableViewCell {
// MARK: - Properties
    /// IBOutlet
    @IBOutlet weak var imgAvatar: UIImageView! {
        didSet {
            imgAvatar.layer.cornerRadius = self.bounds.width / 2
            imgAvatar.layer.borderColor = UIColor.black.cgColor
        }
    }
    @IBOutlet weak var lblTimeCreate: UILabel!
    @IBOutlet weak var btnStar: UIButton?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        imgAvatar.image = nil
        lblTimeCreate.text = nil
    }

}
