//
//  SideSelectionDelegate.swift
//  ProtocolDelegatePatternUsedStarWars
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

protocol SideSelectionDelegate {
    // 넘겨야 하는 데이터를 func로 만들기.
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}
