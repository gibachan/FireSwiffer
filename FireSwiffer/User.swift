//
//  User.swift
//  FireSwiffer
//
//  Created by gibachan on 2016/07/09.
//  Copyright © 2016年 gibachan. All rights reserved.
//

import Foundation
import FirebaseAuth

struct User {
    let uid: String
    let email: String

    init(userData: FIRUser) {
        uid = userData.uid

        if let mail = userData.providerData.first?.email {
            email = mail
        } else {
            email = ""
        }
    }
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
    
    
}