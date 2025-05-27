//
//  UserViewModel.swift
//  study0523
//
//  Created by 임소은 on 5/24/25.
//
import Foundation

class UserViewModel : ObservableObject {
    @Published var userModel : UserModel

    init(userModel: UserModel) {
        self.userModel = userModel
    }
    
    func increaseAge() {
        self.userModel.increaseAge()
    }
    func decreaseAge() {
        self.userModel.deccreaseAge()
    }
}
