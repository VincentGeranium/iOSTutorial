//
//  ResultViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/08.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    let dummyView: UIView = {
        let dummyView: UIView = UIView()
        dummyView.backgroundColor = .blue
        return dummyView
    }()
    
    let collectionView: ResultView = {
        let collectionView: ResultView = ResultView()
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.navigationController?.navigationBar.isHidden = false
        addViews()


        
    }
    
    private func addViews() {
        setupDummyView()
        setupCollectionView()
        
    }
    
    private func setupDummyView() {
        let guide = self.view.safeAreaLayoutGuide
        
        dummyView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(dummyView)
        
        NSLayoutConstraint.activate([
            dummyView.topAnchor.constraint(equalTo: guide.topAnchor),
            dummyView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            dummyView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            dummyView.heightAnchor.constraint(equalToConstant: (self.view.frame.width - 187)),
//            dummyView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        
    }
    
    private func setupCollectionView() {
        let guide = self.view.safeAreaLayoutGuide
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.heightAnchor.constraint(equalToConstant: 187),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -40),
        ])
        
        
    }
}
