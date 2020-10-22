//
//  QuestionViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/05.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    let resultVC = ResultViewController.resultVC
    
    lazy var questionView: QuestionView = {
        let questionView: QuestionView = QuestionView()
        questionView.backgroundColor = .systemGray
        return questionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        self.navigationController?.navigationBar.isHidden = false
        
        questionView.questionvViewButtonActionDelegate = self
        
        addViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 뷰의 height 값 가져오기.
        print(questionView.frame.height)
    }
    
    private func addViews() {
        setupQuestionView()
    }
    
    private func setupQuestionView() {
        let guide = self.view.safeAreaLayoutGuide
        
        questionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(questionView)
        
        NSLayoutConstraint.activate([
            questionView.topAnchor.constraint(equalTo: guide.topAnchor),
            questionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            questionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            questionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }
}

extension QuestionViewController: QuestionvViewButtonActionDelegate {
    func whichButtonTapped(_ button: UIButton, _ bool: Bool) {
        if questionView.questionLabel.text == firstQuestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = fourthQuestion
            case questionView.noButton:
                return questionView.questionLabel.text = secondQuestion
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == secondQuestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = thirdQuestion
            case questionView.noButton:
                return questionView.questionLabel.text = fifthQestion
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == thirdQuestion {
            switch button {
            case questionView.yesButton:
                print("Type F")
//                let name = Notification.Name.init(typeFnotificationKey)
                NotificationCenter.default.post(name: typeFnotificationName, object: nil)
                self.navigationController?.pushViewController(resultVC, animated: true)
            case questionView.noButton:
                print("Type E")
                let name = Notification.Name.init(typeEnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                self.navigationController?.pushViewController(resultVC, animated: true)
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == fourthQuestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = fifthQestion
            case questionView.noButton:
                return questionView.questionLabel.text = seventhQuestion
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == fifthQestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = thirdQuestion
            case questionView.noButton:
                return  questionView.questionLabel.text = sixthQuestion
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == sixthQuestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = eighthQuestion
            case questionView.noButton:
                print("Type E")
                
                let name = Notification.Name.init(typeEnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                self.navigationController?.pushViewController(resultVC, animated: true)
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == seventhQuestion {
            switch button {
            case questionView.yesButton:
                return questionView.questionLabel.text = ninthQuestion
            case questionView.noButton:
                return questionView.questionLabel.text = eighthQuestion
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == eighthQuestion {
            switch button {
            case questionView.yesButton:
                print("Type A")
                let name = Notification.Name.init(typeAnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                self.navigationController?.pushViewController(resultVC, animated: true)
            case questionView.noButton:
                print("Type B")
                let name = Notification.Name.init(typeBnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                self.navigationController?.pushViewController(resultVC, animated: true)
            default:
                return questionView.questionLabel.text = "Error"
            }
        } else if questionView.questionLabel.text == ninthQuestion {
            switch button {
            case questionView.yesButton:
                print("Type C")
                
                let name = Notification.Name.init(typeCnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                self.navigationController?.pushViewController(resultVC, animated: true)
            case questionView.noButton:
                print("Type D")
                
                let name = Notification.Name.init(typeDnotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                self.navigationController?.pushViewController(resultVC, animated: true)
            default:
                return questionView.questionLabel.text = "Error"
            }
        }
    }
}
