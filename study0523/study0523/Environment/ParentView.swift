//
//  ParentView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//
import SwiftUI

struct ParentView : View {
    @StateObject var userViewModel :  EUserViewModel = .init()
    
    var body : some View {
        NavigationStack {
            VStack {
                Text("현재 사용자 :\(userViewModel.username)")
                    .font(.title)
                
                NavigationLink(
                    "프로필 화면으로 이동",
                    destination: ProfileView().environmentObject(userViewModel)
                    )
                NavigationLink(
                    "설정화면으로 이동",
                    destination: SettingsView().environmentObject(userViewModel)
                    )
                    }
            }
        }
    }

#Preview {
    ParentView()
}

