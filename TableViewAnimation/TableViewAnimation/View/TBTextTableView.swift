//
//  TBTextTableView.swift
//  TableViewAnimation
//
//  Created by 田彬彬 on 2017/6/10.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class TBTextTableView: UITableView {

    // view 持有 viewModel
    var VM : TextTabelViewModel  = TextTabelViewModel()
    
    override func awakeFromNib() {
        
        self.tableFooterView = UIView()
        // 自适应高度问题
        self.estimatedRowHeight = 60
        self.rowHeight = UITableViewAutomaticDimension
        self.separatorInset = UIEdgeInsets.zero
        VM.target  = self
        self.delegate = VM
        self.dataSource = VM
    }
    
}
