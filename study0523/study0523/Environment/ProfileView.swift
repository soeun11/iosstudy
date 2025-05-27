//
//  ProfileView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//
import SwiftUI

struct ProfileView : View {
    
    @EnvironmentObject var userViewModel : EUserViewModel // 뷰모 뷰에서 전달된 환경 객체 사용
    
    var body : some View {
        VStack {
            Text("프로필 화면")
                .font(.largeTitle)
            
            Text("사용자 이름 : \(userViewModel.username)") // 뷰모뷰의 상태가 자동 반영
                .font(.title)
            
            Button("사용자 이름 변경") {
                userViewModel.username = "새로운 이름"
            }
            .padding()
            .background(Color.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(EUserViewModel())
}
