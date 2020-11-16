//
//  DateExtension.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/11/16.
//

import Foundation
import UIKit

// 출처 : https://www.codegrepper.com/code-examples/swift/get+yesterday+swift

extension Date {
    static var yesterday: Date { return Date().dayBefore}
    
    var dayBefore: Date {
        guard let dayBeforeCalndar = Calendar.current.date(
                byAdding: .day,
                value: -1,
                to: noon
        ) else {return Date()}
        
        return dayBeforeCalndar
    }
    
    var noon: Date {
        
        guard let noonFromCalendar = Calendar.current.date(
                bySettingHour: 12,
                minute: 0,
                second: 0,
                of: self
        ) else { return Date() }
        
        return noonFromCalendar
    }
}
