//
//  StudentManagement.swift
//  StudentManagementWithClass
//
//  Created by Trương Quang Thuỷ on 8/26/17.
//  Copyright © 2017 Thuy Truong. All rights reserved.
//

import UIKit

class StudentManagement: UIViewController {
// MARK: - Properties
    /// Variable
    let dataSource = StudentDataSource()
    
    @IBOutlet weak var btnSegment: UISegmentedControl!
    /// IBOutlets
    @IBOutlet weak var tblStudents: BaseTableView!

    @IBOutlet var myHeaderView: UIView!
    /// IBAction
    @IBAction func abtnSegment(_ sender: UISegmentedControl) {
        print("da vao \(sender.selectedSegmentIndex)")
        switch sender.selectedSegmentIndex {
        case 0:
            tblStudents.dataSource = dataSource
        default:
            tblStudents.dataSource = dataSource
        }
         tblStudents.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //dataSource.data = DataServices.shared.students
        loadData()
        tblStudents.tableHeaderView = myHeaderView
        tblStudents.isScrollEnabled = false
    }
    
    func loadData() {
        tblStudents.dataSource = dataSource
        tblStudents.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
