//
//  StudentCell.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/28/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import Foundation
import UIKit
class StudentCell: BaseCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblClass: UILabel!
    
    override func prepareForReuse() {
        lblName.text = nil
        lblPhone.text = nil
        lblClass.text = nil
    }
}
