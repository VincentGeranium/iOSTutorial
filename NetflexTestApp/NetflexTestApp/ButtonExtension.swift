//
//  ButtonExtension.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/12.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit
extension UIButton {
    func setButton(button: UIButton, title: String, buttonState: UIButton.State, titleColor: UIColor, fontName: String, fontSize: CGFloat, fontWeight: UIFont.Weight, borderWidth: CGFloat, cornerRadius: CGFloat, backgroundColor: UIColor, isEnabled: Bool, borderColor: CGColor) {
        button.setTitle(title, for: buttonState)
        button.setTitleColor(titleColor, for: buttonState)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.init(name: fontName, size: fontSize)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = backgroundColor
        button.isEnabled = isEnabled
    }
    
    func setBorderColor(_ Color: CGColor, for state: UIButton.State) {
        if state == .normal {
            self.layer.borderColor = Color
        } else if state == .disabled {
            self.layer.borderColor = Color
        }
    }
}

