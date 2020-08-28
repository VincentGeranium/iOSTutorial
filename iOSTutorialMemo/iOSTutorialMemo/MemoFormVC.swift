//
//  WriteMemoViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/22.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MemoFormVC: UIViewController {
    
    var subject: String?
    
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
        
        self.memoTextView.delegate = self
        
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
        /*
         이미지 피커 컨트롤러에 대한 내용을 차례로 구현.
         1. 이미지 피커 컨트롤러 인스턴스를 생성.
         2. 이미지 피커 컨트롤러 인스턴스의 델리게이트 속성을 현재의 뷰 컨트롤러 인스턴스로 설정.
         3. 이미지 피커 컨트롤러의 이미지 편집을 허용.
         4. 이미지 피커 컨트롤러를 화면에 표시.
         */
        
        // 이미지 피커 인스턴스 생성.
        let picker: UIImagePickerController = UIImagePickerController()
        
        picker.delegate = self
        picker.allowsEditing = true
        
        // 이미지 피커 화면을 표시.
        self.present(picker, animated: false, completion: nil)
        
        print("카메라 버튼")
    }
}

extension MemoFormVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {
    // 이미지 선택을 완료했을 때 호출되는 메소드.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // 선택된 이미지를 미리보기에 표시.
        self.memoImageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        
        // 이미지 피커 컨트롤러를 닫는다.
        picker.dismiss(animated: false, completion: nil)
    }
    
}
