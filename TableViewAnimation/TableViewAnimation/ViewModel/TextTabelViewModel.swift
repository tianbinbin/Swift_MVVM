//
//  TextTabelViewModel.swift
//  TableViewAnimation
//
//  Created by 田彬彬 on 2017/6/10.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class TextTabelViewModel: NSObject ,UITableViewDelegate,UITableViewDataSource{

    // ViewModel 持有 view
    var target : TBTextTableView!
    let textValue :String = "这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n这是测试数据\n"
    var dict:Dictionary<String,String> = [:]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        /*
        let label =  cell.viewWithTag(1000) as! UILabel
        
        if dict[String(indexPath.row)] == "0"{
            
            label.numberOfLines = 0
        }else{
            
            label.numberOfLines = 1
        }
        
        
        label.text = textValue
        */
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /*
        let cell = tableView.cellForRow(at: indexPath)
        
        let label = cell?.viewWithTag(1000) as! UILabel
        
        tableView.beginUpdates()
        if label.numberOfLines == 0{
            label.numberOfLines = 1
            dict[String(indexPath.row)] = "1"
        }else{
            label.numberOfLines = 0
            dict[String(indexPath.row)] = "0"
        }
        
        tableView.endUpdates()
        */
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // 显示在屏幕上的cell
        for cell in self.target.visibleCells{
            
            let bottomView = cell.contentView.viewWithTag(2000)
            let imageV = bottomView?.viewWithTag(2001)
            
            // bottomView 相对于屏幕的位置
            let rect = bottomView?.convert((bottomView?.bounds)!, to: nil)
            
            var Y = UIScreen.main.bounds.size.height - (rect?.origin.y)! - 600.0
            
            Y *= 0.2
            
            if Y > 0 {
                
                Y = 0
            }
            
            if Y < -100{
                
                Y = -100
            }
            
            imageV?.frame.origin.y = Y
            
        }
        
    }
    
}
