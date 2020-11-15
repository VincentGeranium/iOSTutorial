//
//  TransferDataDelegate.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/11/15.
//

import Foundation
import UIKit

protocol TransferDataDelegate {
    func transferAllData(incDec: String, isolClearCnt: String, defCnt: String, isolIngCnt: String, overFlowCnt: String, deathCnt: String)
}
