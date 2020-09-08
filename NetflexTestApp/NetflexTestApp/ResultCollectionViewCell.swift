//
//  ResultCollectionViewCell.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier: String = "ResultCollectionViewCell"
    
    private let videoImageView: UIImageView = {
        let videoImageView = UIImageView()
        videoImageView.contentMode = .scaleAspectFill
        videoImageView.backgroundColor = .red
        videoImageView.clipsToBounds = true
        videoImageView.layer.cornerRadius = 12
        return videoImageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
    
        addCells()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addCells() {
        setupVideoImageView()
    }
    
    private func setupVideoImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(videoImageView)
        
        NSLayoutConstraint.activate([
            videoImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            videoImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            videoImageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            videoImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
}
