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
    
    lazy var userInfoView: UserInfoView = {
        let userInfoView: UserInfoView = UserInfoView()
        userInfoView.confirmButton.addTarget(self, action: #selector(didTappedConfirmButton(_:)), for: .touchUpInside)
        return userInfoView
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
        userInfoView.numberAlertControllerDelegate = self
        
    }
    
    private func addViews() {
        setupUserInfoView()
        
    }
    
    private func setupUserInfoView() {
        let guide = self.view.safeAreaLayoutGuide
        
        userInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(userInfoView)
        
        NSLayoutConstraint.activate([
            userInfoView.topAnchor.constraint(equalTo: guide.topAnchor),
            userInfoView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            userInfoView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            userInfoView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    @objc private func didTappedConfirmButton(_ sender: UIButton) {
        guard let name = userInfoView.nameTextField.text else { return }
        guard let number = userInfoView.numberTextField.text else { return }
        guard let food = userInfoView.foodTextField.text else { return }
        
        let userInfo: UserInfo = UserInfo(name: name, number: number, food: food)
        
        
//        print("\(userInfo.name), \(userInfo.number), \(userInfo.food)")
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
