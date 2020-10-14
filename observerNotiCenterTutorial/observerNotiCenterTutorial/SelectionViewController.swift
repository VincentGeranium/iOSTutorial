//
//  SelectionViewController.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/14.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    let titleView: SelectionTitleView = {
        let titleView: SelectionTitleView = SelectionTitleView()
        
        return titleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
    }
    
    private func addViews() {
        setupTitleView()
    }
    
    private func setupTitleView() {
        let guide = self.view.safeAreaLayoutGuide
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleView)
        
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: guide.topAnchor),
            titleView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            titleView.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

}
