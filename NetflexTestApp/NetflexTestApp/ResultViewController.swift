//
//  ResultViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/08.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    fileprivate let typeView: TypeView = {
        let typeView: TypeView = TypeView()
        typeView.backgroundColor = .blue
        return typeView
    }()
    
    fileprivate let collectionView: ResultView = {
        let collectionView: ResultView = ResultView()
        collectionView.backgroundColor = .yellow
        return collectionView
    }()
    
    fileprivate let resultExplainView: ResultExplainView = {
        let resultExplainView: ResultExplainView = ResultExplainView()
        resultExplainView.backgroundColor = .darkGray
        return resultExplainView
    }()
    
    fileprivate let celebrityView: CelebrityView = {
        let celebrityView: CelebrityView = CelebrityView()
        celebrityView.backgroundColor = .systemPink
        return celebrityView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        self.navigationController?.navigationBar.isHidden = false
        
        addViews()


        
    }
    
    private func addViews() {
        setupTypeView()
        setupCollectionView()
        setupResultExplainView()
        setupCelebrityView()
    }
    
    private func setupTypeView() {
        let guide = self.view.safeAreaLayoutGuide
        
        typeView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(typeView)
        
        NSLayoutConstraint.activate([
            typeView.topAnchor.constraint(equalTo: guide.topAnchor),
            typeView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            typeView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            typeView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    private func setupCollectionView() {
        let guide = self.view.safeAreaLayoutGuide
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.heightAnchor.constraint(equalToConstant: 150),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -40),
        ])
    }
    
    private func setupResultExplainView() {
        let guide = self.view.safeAreaLayoutGuide
        
        resultExplainView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(resultExplainView)
        
        NSLayoutConstraint.activate([
            resultExplainView.topAnchor.constraint(equalTo: typeView.bottomAnchor),
            resultExplainView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            resultExplainView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            resultExplainView.bottomAnchor.constraint(equalTo: collectionView.topAnchor, constant: -120),
        ])
    }
    
    private func setupCelebrityView() {
        let guide = self.view.safeAreaLayoutGuide
        
        celebrityView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(celebrityView)
        
        NSLayoutConstraint.activate([
            celebrityView.topAnchor.constraint(equalTo: resultExplainView.bottomAnchor),
            celebrityView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            celebrityView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            celebrityView.bottomAnchor.constraint(equalTo: collectionView.topAnchor, constant: 0),
        ])
    }
}
