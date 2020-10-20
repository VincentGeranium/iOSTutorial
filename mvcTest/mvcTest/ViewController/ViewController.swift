//
//  ViewController.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import UIKit

class ViewController: UIViewController {
    static let vc = ViewController()
    
    let redButtonView: RedButtonView = {
        let redButtonView: RedButtonView = RedButtonView()
        return redButtonView
    }()
    
    let blueButtonView: BlueButtonView = {
        let blueButtonView: BlueButtonView = BlueButtonView()
        return blueButtonView
    }()
    
    deinit {
        print("deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        addViews()
        addObservers()
    }
    
    private func addViews() {
        setupRedButtonView()
        setupBlueButtonView()
    }
    
    private func setupRedButtonView() {
        let guide = self.view.safeAreaLayoutGuide
        
        redButtonView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(redButtonView)
        
        NSLayoutConstraint.activate([
            redButtonView.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -80),
            redButtonView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            redButtonView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            redButtonView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            redButtonView.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func setupBlueButtonView() {
        let guide = self.view.safeAreaLayoutGuide
        
        blueButtonView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(blueButtonView)
        
        NSLayoutConstraint.activate([
            blueButtonView.topAnchor.constraint(equalTo: redButtonView.bottomAnchor, constant: 80),
            blueButtonView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            blueButtonView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            blueButtonView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            blueButtonView.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func addObservers() {
        createObserver(observer: self, selector: #selector(updateImageViewBackgroundColor(notification:)), name: notificationNameRed)
        createObserver(observer: self, selector: #selector(updateColorTitleText(notification:)), name: notificationNameRed)
        createObserver(observer: self, selector: #selector(updateImageViewBackgroundColor(notification:)), name: notificationNameBlue)
        createObserver(observer: self, selector: #selector(updateColorTitleText(notification:)), name: notificationNameBlue)
    }
    
    @objc func updateImageViewBackgroundColor(notification: NSNotification) {
        let selectColorVC = SelectColorViewController.selectColorVC
        
        if notification.name == notificationNameRed {
            selectColorVC.selectColorImageView.selectColorImageView.backgroundColor = .red
        } else if notification.name == notificationNameBlue {
            selectColorVC.selectColorImageView.selectColorImageView.backgroundColor = .blue
        }
        
        
        
        print("updateImageViewBackgroundColor")
    }
    
    @objc func updateColorTitleText(notification: NSNotification) {
        let selectColorVC = SelectColorViewController.selectColorVC
        
        if notification.name == notificationNameRed {
            selectColorVC.selectColorTitleLabelView.selectColorLabel.text = "Red"
            selectColorVC.selectColorTitleLabelView.selectColorLabel.layer.backgroundColor = UIColor.red.cgColor
        } else if notification.name == notificationNameBlue {
            selectColorVC.selectColorTitleLabelView.selectColorLabel.text = "Blue"
            selectColorVC.selectColorTitleLabelView.selectColorLabel.layer.backgroundColor = UIColor.blue.cgColor
        }
        
        print("updateImageViewBackgroundColor")
    }


}

