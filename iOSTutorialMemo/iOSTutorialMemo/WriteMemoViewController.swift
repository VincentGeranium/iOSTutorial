//
//  WriteMemoViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/22.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class WriteMemoViewController: UIViewController {
    
    private lazy var memoTextView: UITextView = {
        let memoTextView: UITextView = UITextView()
        memoTextView.backgroundColor = .systemPink
        memoTextView.isEditable = true
        memoTextView.textContentType = .none
        memoTextView.autocapitalizationType = .sentences
        memoTextView.autocorrectionType = .no
        memoTextView.smartDashesType = .default
        memoTextView.smartInsertDeleteType = .default
        memoTextView.smartQuotesType = .default
        memoTextView.spellCheckingType = .no
        memoTextView.keyboardType = .default
        memoTextView.keyboardAppearance = .dark
        memoTextView.returnKeyType = .default
        return memoTextView
    }()
    
    private lazy var memoImageView: UIImageView = {
        let memoImageView: UIImageView = UIImageView()
        memoImageView.backgroundColor = .systemBlue
        return memoImageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        setUpAndAddViews()
      
    }
    
    private func setUpAndAddViews() {
        setUpNavigationItem()
        setUpMemoTextView()
        setUpMemoImageView()
    }
    
    private func setUpNavigationItem() {
        self.navigationItem.title = "메모 작성"
        
        let saveButton: UIBarButtonItem = UIBarButtonItem.init(title: "저장", style: .plain, target: self, action: #selector(saveButtonAction(_:)))
        let cameraButton: UIBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .camera, target: self, action: #selector(cameraButtonAction(_:)))
        
        self.navigationItem.rightBarButtonItems = [cameraButton, saveButton]
    }
    
    private func setUpMemoTextView() {
        let guide = self.view.safeAreaLayoutGuide
        
        memoTextView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(memoTextView)
        
        NSLayoutConstraint.activate([
            memoTextView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            memoTextView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0),
            memoTextView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: 0),
//            memoTextView.widthAnchor.constraint(equalToConstant: 343),
            memoTextView.heightAnchor.constraint(equalToConstant: 250),
        ])
    }
    
    private func setUpMemoImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        memoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(memoImageView)
        
        NSLayoutConstraint.activate([
            memoImageView.topAnchor.constraint(equalTo: memoTextView.bottomAnchor, constant: 15),
            memoImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0),
            memoImageView.widthAnchor.constraint(equalToConstant: 250),
            memoImageView.heightAnchor.constraint(equalToConstant: 250),
        ])
    }
    
    @objc private func saveButtonAction(_ sender: UIBarButtonItem) {
        print("저장 버튼")
    }
    
    @objc private func cameraButtonAction(_ sender: UIBarButtonItem) {
        print("카메라 버튼")
    }


}
