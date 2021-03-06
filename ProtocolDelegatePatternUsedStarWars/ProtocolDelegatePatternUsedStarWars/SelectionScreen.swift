//
//  SelectionScreen.swift
//  ProtocolDelegatePatternUsedStarWars
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit
// 데이터를 넘겨주는 Boss와 같은 역활을 하는 VC
class SelectionScreen: UIViewController {
    
    var sideSelectionDelegate: SideSelectionDelegate?
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.init(name: "Avenir Next", size: 26)
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .clear
        titleLabel.font = UIFont.systemFont(ofSize: 26, weight: .heavy)
        titleLabel.textColor = UIColor.systemYellow
        titleLabel.text = "Choose Your Side"
        return titleLabel
    }()
    
    lazy var imperialButton: UIButton = {
        let imperialButton: UIButton = UIButton()
        imperialButton.setImage(UIImage(named: "imperial"), for: .normal)
        return imperialButton
    }()
    
    lazy var rebelButton: UIButton = {
        let rebelButton: UIButton = UIButton()
        rebelButton.setImage(UIImage(named: "rebel"), for: .normal)
        return rebelButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        
        addViews()
    }
    
    private func addViews() {
        setupTitleLabel()
        setupImperialButton()
        setupRebelButton()
    }
    
    private func setupTitleLabel() {
        let guide = self.view.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 256),
            titleLabel.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupImperialButton() {
        let guide = self.view.safeAreaLayoutGuide
        
        imperialButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(imperialButton)
        
        NSLayoutConstraint.activate([
            imperialButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            imperialButton.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -80),
            imperialButton.widthAnchor.constraint(equalToConstant: 150),
            imperialButton.heightAnchor.constraint(equalToConstant: 150),
        ])
        
        imperialButton.addTarget(self, action: #selector(didTappedImperialButton(_:)), for: .touchUpInside)
    }

    
    @objc private func didTappedImperialButton(_ sender: UIButton) {
        guard let image = UIImage(named: "vader") else { return }
        // 넘겨야 하는 데이터를 버튼의 이벤트가 작동되면 delegate를 사용하여 delegate를 받는 뷰에 데이터를 넘겨준다.
        sideSelectionDelegate?.didTapChoice(image: image, name: "Darth vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    private func setupRebelButton() {
        let guide = self.view.safeAreaLayoutGuide
        
        rebelButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(rebelButton)
        
        NSLayoutConstraint.activate([
            rebelButton.topAnchor.constraint(equalTo: imperialButton.bottomAnchor, constant: 45.5),
            rebelButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            rebelButton.widthAnchor.constraint(equalToConstant: 150),
            rebelButton.heightAnchor.constraint(equalToConstant: 150),
        ])
        
        rebelButton.addTarget(self, action: #selector(didTappedRebelButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedRebelButton(_ sender: UIButton) {
        guard let image = UIImage(named: "luke") else { return }
        // 넘겨야 하는 데이터를 버튼의 이벤트가 작동되면 delegate를 사용하여 delegate를 받는 뷰에 데이터를 넘겨준다.
        sideSelectionDelegate?.didTapChoice(image: image, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
    }

}
