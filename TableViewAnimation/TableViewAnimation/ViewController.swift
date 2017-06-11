//
//  ViewController.swift
//  TableViewAnimation
//
//  Created by 田彬彬 on 2017/6/10.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class ViewController: UIViewController{


    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var barItem: TextBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barItem.controllertarget = self
    }
    
    override func viewDidLayoutSubviews() {
        self.tableView.separatorInset = UIEdgeInsets.zero
        self.tableView.layoutMargins = UIEdgeInsets.zero
    }
    
    deinit {
        
        print("viewcontroller release")
    }
}

