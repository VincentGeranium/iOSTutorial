//
//  SelectColorViewController.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import UIKit

class SelectColorViewController: UIViewController {
    
    static let selectColorVC = SelectColorViewController()
    
    let selectColorImageView: SelectColorImageView = {
        let selectColorImageView: SelectColorImageView = SelectColorImageView()
        return selectColorImageView
    }()
    
    let selectColorTitleLabelView: SelectColorTitleLabelView = {
        let selectColorTitleLabelView: SelectColorTitleLabelView = SelectColorTitleLabelView()
        return selectColorTitleLabelView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        addViews()
    }
    
    private func addViews() {
        setupSelectionColorImageView()
        setupSelectColorTitleLabelView()
    }
    
    private func setupSelectionColorImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        selectColorImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(selectColorImageView)
        
        NSLayoutConstraint.activate([
            selectColorImageView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            selectColorImageView.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            selectColorImageView.widthAnchor.constraint(equalToConstant: 100),
            selectColorImageView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    private func setupSelectColorTitleLabelView() {
        let guide = self.view.safeAreaLayoutGuide
        
        selectColorTitleLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(selectColorTitleLabelView)
        
        NSLayoutConstraint.activate([
            selectColorTitleLabelView.topAnchor.constraint(equalTo: selectColorImageView.bottomAnchor, constant: 40),
            selectColorTitleLabelView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            selectColorTitleLabelView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
            selectColorTitleLabelView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
            selectColorTitleLabelView.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
}
