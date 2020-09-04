//
//  User.swift
//  MVVMTutorial
//
//  Created by 김광준 on 2020/08/29.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

struct User {
    let age: Int
    let name: String
    let backgroundColor: UIColor
    
    init(age: Int, name: String, backgroundColor: UIColor) {
        self.age = age
        self.name = name
        self.backgroundColor = backgroundColor
    }
}
