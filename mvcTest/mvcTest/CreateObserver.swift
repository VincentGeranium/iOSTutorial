//
//  CreateObserver.swift
//  mvcTest
//
//  Created by 김광준 on 2020/10/20.
//

import Foundation
import UIKit


func createObserver(observer: Any, selector: Selector, name: NSNotification.Name) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: nil)
    }



