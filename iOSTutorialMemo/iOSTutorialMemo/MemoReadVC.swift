//
//  DetailViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    
    private lazy var detailView: MemoReadView = {
        let detailView: MemoReadView = MemoReadView()
        return detailView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .white
        
        setUpNavigationItem()
        setUpDetailView()
    }
    
    private func setUpNavigationItem() {
        self.navigationItem.title = "Detail View"
    }
    
    private func setUpDetailView() {
        let guide = self.view.safeAreaLayoutGuide
        
        detailView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(detailView)
        
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: guide.topAnchor),
            detailView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            detailView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            detailView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    
    
}
