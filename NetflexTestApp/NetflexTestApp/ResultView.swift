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
    
    private let layout: UICollectionViewFlowLayout = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = .zero
        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        return layout
    }()
    
    private lazy var resultCollectionView: UICollectionView = {
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
//     지정된 섹션의 셀 사이의 최소간격을 반환하는 메서드.
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 50
//    }
    
    // 지정된 섹션의 헤더뷰의 크기를 반환하는 메서드. 크기를 지정하지 않으면 화면에 보이지 않습니다.
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: resultCollectionView.frame.width / 11, height: resultCollectionView.frame.width / 2)
//    }
    
    // 지정된 섹션의 푸터뷰의 크기를 반환하는 메서드. 크기를 지정하지 않으면 화면에 보이지 않습니다.
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize(width: resultCollectionView.frame.width / 11, height: resultCollectionView.frame.width / 2)
//    }
    
    // 지정된 셀의 크기를 반환하는 메서드.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: resultCollectionView.frame.width / 2, height: resultCollectionView.frame.width / 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultCollectionViewCell.reuseIdentifier, for: indexPath) as? ResultCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}
