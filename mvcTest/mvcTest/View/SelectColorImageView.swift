//
//  SelectColorImageView.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import UIKit

class SelectColorImageView: UIView {
    
    let selectColorImageView: UIImageView = {
        let selectColorImageView: UIImageView = UIImageView()
        selectColorImageView.layer.cornerRadius = 8.0
        selectColorImageView.layer.borderWidth = 1.0
//        selectColorImageView.layer.borderColor = UIColor.white.cgColor
        return selectColorImageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addViews() {
        setupSelectionColorImageView()
    }
    
    private func setupSelectionColorImageView() {
        let guide = self.safeAreaLayoutGuide
        
        selectColorImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(selectColorImageView)
        
        NSLayoutConstraint.activate([
            selectColorImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            selectColorImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            selectColorImageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            selectColorImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    
    
}
