//
//  UserView.swift
//  study0523
//
//  Created by 임소은 on 5/24/25.
//

import SwiftUI

struct UserView : View {
    @StateObject var viewModel : UserViewModel
    
    init() {
        self._viewModel = .init(wrappedValue: .init(userModel: .init(name: "소은", age: 20)))
    }
    
    var body : some View {
        VStack {
            HStack {
                Button(action: {
                    viewModel.increaseAge()
                }, label: {
                    Image(systemName: "arrow.up.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.black)
                })
                Button(action: {
                    viewModel.decreaseAge()
                }, label: {
                    Image(systemName: "arrow.down.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.black)
                })
            }
            Group {
                Text("이름: \(viewModel.userModel.name)")
                Text("나이 : \(viewModel.userModel.age)")
            }
            .padding(.top, 20)
        }
    }
}


#Preview() {
    UserView()
}
