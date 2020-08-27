//
//  DetailViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView: DetailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .white
        
        setUpDetailView()
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
