//
//  ModalBase.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/26/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import Foundation
import UIKit

class ModalBase: DataProtocol {
    var imgAvatar: UIImage?
    var timeCreate: String?
    
    init?(imgAvatar: UIImage, timeCreate: String) {
        guard timeCreate != "" else {
            return nil
        }
        self.timeCreate = timeCreate
        self.imgAvatar = imgAvatar
    }
}
