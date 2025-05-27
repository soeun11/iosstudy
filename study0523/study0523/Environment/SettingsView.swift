//
//  SettingView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userViewModel : EUserViewModel
    var body: some View {
        VStack {
            Text("설정화면")
                .font(.largeTitle)
            
            TextField("사용자 이름 변경", text: $userViewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(EUserViewModel())
}
