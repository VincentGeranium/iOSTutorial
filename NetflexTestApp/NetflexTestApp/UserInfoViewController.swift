//
//  UserInfoViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var userInfoDelegate: UserInfoViewControllerDelegate?
    
    lazy var mainView: UserInfoView = {
        let mainView: UserInfoView = UserInfoView()
        mainView.confirmButton.addTarget(self, action: #selector(didTappedConfirmButton(_:)), for: .touchUpInside)
        return mainView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        
        self.navigationController?.navigationBar.isHidden = true
        
        addDelegates()
        addViews()
    }
    
    private func addDelegates() {
        mainView.numberAlertControllerDelegate = self
        
    }
    
    private func addViews() {
        setupUserInfoView()
        
    }
    
    private func setupUserInfoView() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainView)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: guide.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    @objc private func didTappedConfirmButton(_ sender: UIButton) {
        guard let name = mainView.nameTextField.text else { return }
        guard let number = mainView.numberTextField.text else { return }
        guard let food = mainView.foodTextField.text else { return }
        
        let userInfo: UserInfo = UserInfo(name: name, number: number, food: food)
        
        print("\(userInfo.name), \(userInfo.number), \(userInfo.food)")
        print(type(of: number))
        
        userInfoDelegate?.userInfo(userInfo)
        
        let questionVC = QuestionViewController()
        let resultVC = ResultViewController()
        
        self.navigationController?.pushViewController(questionVC, animated: true)
    }
}

extension UserInfoViewController: NumberAlertControllerDelegate {
    func alertAction(_ alert: UIAlertController, _ bool: Bool) {
        present(alert, animated: bool, completion: nil)
    }
    
    
}
