//
//  StudentModel.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/28/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import Foundation
import UIKit
class StudentModel: DataProtocol {
    var timeCreate: String?
    var imgAvatar: UIImage?
    var sName: String?
    var sPhone: String?
    var sClass: String?

    init?(sName: String, sPhone: String, sClass: String) {
        guard sName != "", sPhone != "", sClass != "" else {
            return nil
        }
        self.sName = sName
        self.sPhone = sPhone
        self.sClass = sClass
    }
}
