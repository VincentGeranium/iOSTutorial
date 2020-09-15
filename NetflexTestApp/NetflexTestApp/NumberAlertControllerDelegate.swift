//
//  NumberAlertControllerDelegate.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

protocol NumberAlertControllerDelegate {
    func alertAction(_ alert: UIAlertController, _ bool: Bool)
}
