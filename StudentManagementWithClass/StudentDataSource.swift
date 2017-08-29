//
//  StudentDataSource.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/28/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import Foundation

class StudentDataSource: DataSource<StudentModel> {
    
    override func configuarationCell(cell: BaseCell, forRawAtIndexPath indexPath: IndexPath) {
        let cell = cell as! StudentCell
        super.configuarationCell(cell: cell, forRawAtIndexPath: indexPath)
        cell.lblName.text = data?[indexPath.row].sName ?? ""
    }
}
