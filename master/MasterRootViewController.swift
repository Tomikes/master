//
//  MasterRootViewController.swift
//  master
//
//  Created by apple on 15/7/28.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

import UIKit


class MasterAnimationTabbarItem: UITabBarItem {
    
  @IBOutlet weak var animation: masterItemAnimation!
    
    
}

class MasterRootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.yellowColor()], forState: UIControlState.Selected)
        
        view.tintColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
