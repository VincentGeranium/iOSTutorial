//
//  SelectColorTitleLabelView.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import Foundation
import UIKit

class SelectColorTitleLabelView: UIView {
    
    let selectColorLabel: UILabel = {
        let selectColorLabel: UILabel = UILabel()
        selectColorLabel.layer.borderWidth = 1.0
        selectColorLabel.layer.borderColor = UIColor.red.cgColor
        selectColorLabel.layer.cornerRadius = 8.0
        selectColorLabel.textAlignment = .center
        selectColorLabel.font = UIFont.boldSystemFont(ofSize: 20)
        selectColorLabel.textColor = UIColor.white
        selectColorLabel.text = ""
        return selectColorLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupSelectColorLabel()
    }
    
    private func setupSelectColorLabel() {
        let guide = self.safeAreaLayoutGuide
        
        selectColorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(selectColorLabel)
        
        NSLayoutConstraint.activate([
            selectColorLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            selectColorLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            selectColorLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            selectColorLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
}


