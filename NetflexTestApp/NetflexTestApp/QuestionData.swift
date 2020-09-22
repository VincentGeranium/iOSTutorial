//
//  QuestionData.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/22.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

let firstQuestion: String = "가족과 함께 휴일을\n보내는 것이 좋다."
let secondQuestion: String = "일을 처리할 때\n계획을 세워서 처리하는 편이다."
let thirdQuestion: String = "새로운 것을\n배우는 걸 좋아한다."
let fourthQuestion: String = "배가 불러도 음식을 남기는 것보다\n다 먹는 것이 낫다고 생각한다."
let fifthQestion: String = "무엇인가 하나를 시작하면\n끝장을 보는 편이다."
let sixthQuestion: String = "나보다 연장자와의\n대화가 어색하거나 불편하지 않다."
let seventhQuestion: String = "여행을 갈 때 휴게소에 들리는 것보다\n빨리 목적지에 도착하는 것이 좋다고 생각한다."
let eighthQuestion: String = "내가 생각하는 게임의 목적은\n승리보다 즐기는 것이라고 생각한다."
let ninthQuestion: String = "나는 현실을 벗어나고 싶다"

enum QuestionData {
    case firstQuestion
    case secondQuestion
    case thirdQuestion
    case fourthQuestion
    case fifthQestion
    case sixthQuestion
    case seventhQuestion
    case eighthQuestion
    case ninthQuestion
    
    var questionText: String {
        switch self {
        case .firstQuestion: return "가족과 함께 휴일을\n보내는 것이 좋다."
        case .secondQuestion: return "일을 처리할 때\n계획을 세워서 처리하는 편이다."
        case .thirdQuestion: return "새로운 것을\n배우는 걸 좋아한다."
        case .fourthQuestion: return "배가 불러도 음식을 남기는 것보다\n다 먹는 것이 낫다고 생각한다."
        case .fifthQestion: return "무엇인가 하나를 시작하면\n끝장을 보는 편이다."
        case .sixthQuestion: return "나보다 연장자와의\n대화가 어색하거나 불편하지 않다."
        case .seventhQuestion: return "여행을 갈 때 휴게소에 들리는 것보다\n빨리 목적지에 도착하는 것이 좋다고 생각한다."
        case .eighthQuestion: return "내가 생각하는 게임의 목적은\n승리보다 즐기는 것이라고 생각한다."
        case .ninthQuestion: return "나는 현실을 벗어나고 싶다"
        }
    }
    
}

//enum resultTree {
//    case yes
//    case no
//
//
//
//    var resultType: String {
//        switch self {
//        case <#pattern#>:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
//}




