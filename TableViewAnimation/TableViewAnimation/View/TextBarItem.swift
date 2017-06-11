//
//  TextBarItem.swift
//  TableViewAnimation
//
//  Created by 田彬彬 on 2017/6/10.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class TextBarItem: UIBarButtonItem {
    
    var  VM : TextBarItemModel = TextBarItemModel()
    weak var controllertarget :ViewController!

    override func awakeFromNib() {
        VM.target = self
        self.target = VM
        self.action = #selector(VM.testAction)
    }
}
