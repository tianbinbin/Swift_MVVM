//
//  TextBarItemModel.swift
//  TableViewAnimation
//
//  Created by 田彬彬 on 2017/6/10.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class TextBarItemModel: NSObject {

    weak var target:TextBarItem!
    
    func testAction() {
        
        print("打印click item")
    
//        let secondVC = SeconedViewController()
//        target.controllertarget.navigationController?.pushViewController(secondVC, animated: true)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "test")
        target.controllertarget.navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
