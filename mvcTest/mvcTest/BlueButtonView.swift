//
//  BlueButtonView.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/21.
//

import UIKit

class BlueButtonView: UIView {
    
    lazy var blueButton: UIButton = {
        let blueButton: UIButton = UIButton()
        blueButton.setTitle("Blue", for: .normal)
        blueButton.layer.borderWidth = 1.0
        blueButton.layer.cornerRadius = 8.0
        blueButton.backgroundColor = .blue
        blueButton.setTitleColor(.white, for: .normal)
        return blueButton
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addViews() {
        setupBlueButton()
    }
    
    private func setupBlueButton() {
        let guide = self.safeAreaLayoutGuide
        
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(blueButton)
        
        NSLayoutConstraint.activate([
            blueButton.topAnchor.constraint(equalTo: guide.topAnchor),
            blueButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            blueButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            blueButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        
        blueButton.addTarget(self, action: #selector(didTappedBlueButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedBlueButton(_ sender: UIButton) {
        let vc = ViewController.vc
        let selectColorVC = SelectColorViewController.selectColorVC
//        selectColorVC.modalPresentationStyle = .fullScreen
        NotificationCenter.default.post(name: notificationNameBlue, object: nil)
        vc.present(selectColorVC, animated: true, completion: nil)
        print("didTappedBlueButton")
    }

}
