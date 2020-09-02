//
//  ViewController.swift
//  wodApp
//
//  Created by 김광준 on 2020/09/02.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let naviBar: UINavigationBar = {
        let naviBar: UINavigationBar = UINavigationBar()
        naviBar.topItem?.title = "f"
        return naviBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "f"
        self.view.backgroundColor = .gray
    }


}

