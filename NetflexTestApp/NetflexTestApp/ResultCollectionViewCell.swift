//
//  ResultCollectionViewCell.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultCollectionViewCell: UICollectionViewCell {
    
    private let videoImageView: UIImageView = {
        let videoImageView = UIImageView()
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.contentMode = .scaleAspectFill
        videoImageView.backgroundColor = .red
        videoImageView.clipsToBounds = true
        videoImageView.layer.cornerRadius = 12
        return videoImageView
    }()
    
    static let reuseIdentifier: String = "ResultCollectionViewCell"
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        contentView.addSubview(videoImageView)

        videoImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        videoImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        videoImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        videoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
