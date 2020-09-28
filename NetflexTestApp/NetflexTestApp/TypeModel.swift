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

class TypeA {
    let userInfoVC = UserInfoViewController()
    
    let typeAtitle: String = "TypeA"
    
    let typeAname: String = "행동가형"
    
    var userName: String?
    
    var userInputNumber: String?
    
    var userInputFood: String?
    
//    var explain: String = """
//    \(self.userName)님!! 당신은 무슨일이든 즐기며 사는 인싸 같아요./n
//    두뇌 회전이 빠르고 행동이 민첩한 당신!!\n
//    타고난 유머 감각과 다재다능함으로 주변 사람들에게 사랑을 받는 분위기 메이커.
//    \(userName)님, 오늘 저녁은 사랑하는 사람과 \(userInputFood) 어떠세요?
//    """

    
    init() {
        userInfoVC.userInfoDelegate = self
//        self.userName = userName
//        self.userInputFood = userInputFood
//        self.userInputNumber = userInputNumber
    }
    
}

extension TypeA: UserInfoViewControllerDelegate {
    func userInfo(_ userInfo: UserInfo) {
        userInputNumber = userInfo.number
        userName = userInfo.name
        userInputFood = userInfo.food
    }
    
}
