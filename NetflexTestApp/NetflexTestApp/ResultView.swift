//
//  ResultView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class ResultView: UIView {
    
    private let resultCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let resultCollectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        resultCollectionView.backgroundColor = .white
        resultCollectionView.register(ResultCollectionViewCell.self, forCellWithReuseIdentifier: ResultCollectionViewCell.reuseIdentifier)
        return resultCollectionView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        resultCollectionView.backgroundColor = .white
        resultCollectionView.delegate = self
        resultCollectionView.dataSource = self
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupResultCollectionView()
    }
    
    private func setupResultCollectionView() {
        
        let guide = self.safeAreaLayoutGuide
        
        resultCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(resultCollectionView)
        
        NSLayoutConstraint.activate([
            resultCollectionView.topAnchor.constraint(equalTo: guide.topAnchor),
            resultCollectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            resultCollectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            resultCollectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
}

extension ResultView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: resultCollectionView.frame.width / 2.5, height: resultCollectionView.frame.width / 2)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultCollectionViewCell.reuseIdentifier, for: indexPath) as? ResultCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}
