//
//  UserModel.swift
//  study0523
//
//  Created by 임소은 on 5/24/25.
//

import Foundation

struct UserModel {
    var name : String
    var age : Int
    
    mutating func increaseAge() {
        self.age += 1
    }
    mutating func deccreaseAge() {
        self.age -= 1
    }
    
}
