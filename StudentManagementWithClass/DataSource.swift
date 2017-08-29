//
//  DataSource.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/26/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import Foundation
import UIKit

class DataSource<T:DataProtocol>: NSObject, UITableViewDataSource {
    
    var data: [T]?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IndentifierCell.cellBase, for: indexPath) as! BaseCell
        configuarationCell(cell: cell, forRawAtIndexPath: indexPath)
        return cell
    }
    func configuarationCell(cell: BaseCell, forRawAtIndexPath indexPath: IndexPath) {
        cell.imgAvatar.image = data?[indexPath.row].imgAvatar ?? UIImage(named: "defaultPhoto")
        cell.lblTimeCreate.text = data?[indexPath.row].timeCreate
    }
}
