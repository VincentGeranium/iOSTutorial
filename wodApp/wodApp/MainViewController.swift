//
//  MainViewController.swift
//  wodApp
//
//  Created by 김광준 on 2020/09/02.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let firstViewController = FirstViewController()
    let secondViewController = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTabBar()
    }
    
    private func setUpTabBar() {
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 0)
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
        let tabBarList = [self.firstViewController, self.secondViewController]
        
        self.viewControllers = tabBarList
        
    }

}
