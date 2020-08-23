//
//  WriteMemoViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/22.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class WriteMemoViewController: UIViewController {
    
    private lazy var textView: UITextView = {
        let textView: UITextView = UITextView()
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray
        setUpNavigationItem()
    }
    
    private func setUpNavigationItem() {
         self.navigationItem.title = "메모 작성"
        
    }

}
