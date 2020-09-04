//
//  SettingsViewControllerDelegate.swift
//  ProtocolDelegatePattern
//
//  Created by 김광준 on 2020/09/04.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

protocol SettingsViewControllerDelegate {
    func didChange(_ profile: Profile)
}
