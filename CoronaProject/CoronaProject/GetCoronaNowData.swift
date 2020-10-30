//
//  GetCoronaNowData.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/28.
//

import Foundation
import Alamofire
import UIKit

func getAllCoronaNowData(_ delegate: XMLParserDelegate) {
    
    // XMLParser 준비
    var xmlParser = XMLParser()
    
    // 데이트 포맷
    var formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd"
    var currentDateString = formatter.string(from: Date())
    print(currentDateString)
    
    // 1. 전송할 값 준비
    let serviceKey: String = "Dmng3ElRum8OIdUuU1Z0NuvDIsfOSvxTO03Tk5gCfwBxbs9UodOlvevA%2FA7%2FgRimX1m1vE1eXoq7BtC4dwaM9A%3D%3D"
    let pageNo: String = "1"
    let numOfRows: String = "10"
    let startCreateDt: String = currentDateString
    let endCreateDt: String = currentDateString
    
    
}
