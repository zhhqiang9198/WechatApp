//
//  MineViewController.swift
//  CLFWeichat
//
//  Created by clf on 2018/9/30.
//  Copyright © 2018年 ppc. All rights reserved.
//

import Foundation
class MineViewController: SettingBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //设置数据源
        self.models = UIDataManager.getMineVCData()
        self.tableView.reloadData()
    }
    
}

//MARK:- 初始化
extension MineViewController {
    fileprivate func setup(){
        
       
        navigationItem.title = "我"
        isAvatar = true
        
//        view.addSubview(self.tableView)
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if indexPath.section == 0 {
        self.pushViewController(UserInfoViewController())
    }
    //设置界面
    else if indexPath.section == 3 {
            self.pushViewController(SettingViewController())
        }
    }
    
    
}
