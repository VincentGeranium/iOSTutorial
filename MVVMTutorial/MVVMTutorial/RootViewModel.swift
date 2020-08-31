//
//  RootViewModel.swift
//  MVVMTutorial
//
//  Created by 김광준 on 2020/08/30.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation

protocol RootViewModelDelegate {
    func didStartFetchingMessage(_ message: String?)
    func didFinishFetchingMessage(_ message: String?)
}

class RootViewModel {
    
    var rootViewModelDelegate: RootViewModelDelegate?
    
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func fetchMessage() {
        rootViewModelDelegate?.didStartFetchingMessage("Fetching...")
        DispatchQueueHelper.delay(bySeconds: 3.0, dispatchLevel: .background) {
            var message: String? = "Hello there"
            
            if message == nil {
                message = "Failed fetch message from server"
            }
            
             DispatchQueueHelper.delay(bySeconds: 0.0) {
                self.rootViewModelDelegate?.didFinishFetchingMessage(message)
             }
         }
    }
}
