//
//  DetailView.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/28.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 15.0)
        /*
         레이블 컨트롤은 기본적으로 한 줄에 표현할 수 있는 만큼의 텍스트만 출력
         출력하지 못하는 나머지 부분은 말줄임표로 처리. 이를 Ellipsis라고 한다.
         긴 콘텐츠를 모두 출력하기 위해서는 속성을 적절히 편집하여 출력 라인 수에 제한이 없도록 처리하고,
         줄바꿈 처리 시 단어 단위로 자연스럽게 이루어지도록 해야한다.
         numberOfLines과 lineBreakMode 두 가지 속성이 이에 해당하는 것들이다.
         */
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        titleLabel.backgroundColor = .systemRed
        return titleLabel
    }()
    
    let contentsLabel: UILabel = {
        let contentsLabel: UILabel = UILabel()
        contentsLabel.font = UIFont.systemFont(ofSize: 13.0)
        contentsLabel.numberOfLines = 0
        contentsLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        contentsLabel.backgroundColor = .systemBlue
        return contentsLabel
    }()
    
    let imageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemPink
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpAndAddViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpAndAddViews() {
        setUpTitleLabel()
        setUpContentsLabel()
        setUpImageView()
    }
    
    private func setUpTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 21),
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
        ])
    }
    
    private func setUpContentsLabel() {
        let guide = self.safeAreaLayoutGuide
        
        contentsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(contentsLabel)
        
        NSLayoutConstraint.activate([
            contentsLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            contentsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            contentsLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            contentsLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
        ])
    }
    
    private func setUpImageView() {
        let guide = self.safeAreaLayoutGuide
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            imageView.topAnchor.constraint(equalTo: contentsLabel.bottomAnchor, constant: 20),
            /*
             이미지 뷰의 상하단 간격을 설정하지 않은 이유.
             상단 간격은 contentsLabel을 통해 이미 설정되었으며, 높이는 실제 이미지에 따라 달라져야 하기 때문이다.
             만약 강제로 높이나 간격을 설정한다면 이미지 뷰에 출력되는 이미지는 경우에 따라 찌그러질 수 있다.
             따라서 필요한 제약 조건은 이미지 뷰의 너비에 관한 것뿐이다.
             이 역시 너비값을 지정하지 않고 양쪽 여백을 설정함으로써 화면 크기에 따라 이미지 뷰의 너비가 유동적이도록 한다.
             */
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 250),
        ])
    }
    
}
