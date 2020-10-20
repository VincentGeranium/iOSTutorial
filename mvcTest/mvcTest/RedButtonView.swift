//
//  RedButtonView.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import UIKit

class RedButtonView: UIView {
    
    let redButton: UIButton = {
        let redButton: UIButton = UIButton()
        redButton.setTitle("Red", for: .normal)
        redButton.layer.borderWidth = 1.0
        redButton.layer.cornerRadius = 8.0
        redButton.backgroundColor = .red
        redButton.setTitleColor(.white, for: .normal)
        return redButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addViews() {
        setupRedButton()
    }
    
    private func setupRedButton() {
        let guide = self.safeAreaLayoutGuide
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(redButton)
        
        NSLayoutConstraint.activate([
            redButton.topAnchor.constraint(equalTo: guide.topAnchor),
            redButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            redButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            redButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        
        redButton.addTarget(self, action: #selector(didTappedRedButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedRedButton(_ sender: UIButton) {
        let vc = ViewController.vc
        let selectColorVC = SelectColorViewController.selectColorVC
//        selectColorVC.modalPresentationStyle = .fullScreen
        NotificationCenter.default.post(name: notificationNameRed, object: nil)
        vc.present(selectColorVC, animated: true, completion: nil)
        print("didTappedRedButton")
    }

}
