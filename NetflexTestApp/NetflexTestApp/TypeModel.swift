//
//  TypeData.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

//struct TypeA  {
//    let userInfoVC = UserInfoViewController()
////    func userInfoVC.userInfoDelegate = self
//    let typeTitleLabel = "A타입"
//    let typeNameLabel = "행동가형"
//}

class TypeA: UserInfoViewControllerDelegate {
    var userInfoVC = UserInfoViewController()
    
    func userInfo(_ userInfo: UserInfo) {
        userInputName = userInfo.name
        userInputNumber = userInfo.number
        userInputFood = userInfo.food
        
        explain = """
        \(userInputName)님!! 당신은 무슨일이든 즐기며 사는 인싸 같아요./n
        두뇌 회전이 빠르고 행동이 민첩한 당신!!\n
        타고난 유머 감각과 다재다능함으로 주변 사람들에게 사랑을 받는 분위기 메이커.
        \(userInputName)님, 오늘 저녁은 사랑하는 사람과 \(userInputFood) 어떠세요?
        """
    }
    
    let typeAtitle: String = "TypeA"
    
    let typeAname: String = "행동가형"
    
    let leftCelebrityNameLabel: String = "배두나"
    
    let rightCelebrityNameLabel: String = "주지훈"
    
    var userInputName: String?
    var userInputFood: String?
    var userInputNumber: String?
    
    var explain: String = {
        var explain: String = String()
        return explain
    }()

    
    init() {
        userInfoVC.userInfoDelegate = self
    }
    
}

class TypeB {
    
}

