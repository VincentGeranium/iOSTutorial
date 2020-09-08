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
    private let resultCollectionViewflowLayout: UICollectionViewFlowLayout = {
        let resultCollectionViewflowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        return resultCollectionViewflowLayout
    }()
    
    private let resultCollectionView: UICollectionView = {
        let resultCollectionView: UICollectionView = UICollectionView()
        resultCollectionView.frame = .zero
        resultCollectionView.backgroundColor = .white
        resultCollectionView.register(ResultCollectionViewCell.self, forCellWithReuseIdentifier: ResultCollectionViewCell.reuseIdentifier)
        return resultCollectionView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        resultCollectionView.delegate = self
        resultCollectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupResultCollectionView() {
        resultCollectionView.collectionViewLayout = resultCollectionViewflowLayout
        
        let guide = self.safeAreaLayoutGuide
        
        resultCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(resultCollectionView)
        
        NSLayoutConstraint.activate([
            resultCollectionView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 40),
            resultCollectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 40),
            resultCollectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -40),
            resultCollectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -40),
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
