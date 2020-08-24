//
//  DetailViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.backgroundColor = .systemRed
        return titleLabel
    }()
    
    private lazy var contentsLabel: UILabel = {
        let contentsLabel: UILabel = UILabel()
        contentsLabel.backgroundColor = .systemBlue
        return contentsLabel
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemPink
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

}
