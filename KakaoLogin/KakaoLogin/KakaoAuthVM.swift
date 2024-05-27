//
//  KakaoAuthVM.swift
//  KakaoLogin
//
//  Created by 임소은 on 5/25/24.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM :ObservableObject {
    
    @Published var isLoggedIn : Bool = false
    
    @MainActor
    func KaKaoLogout(){
        Task{
            if await handleKaKaoLogout(){
                isLoggedIn = false
            }
        }
    }
    
    func handleKaKaoLogout() async-> Bool{
        
        await withCheckedContinuation{
            continuation in
            UserApi.shared.logout {(error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("logout() success.")
                    continuation.resume(returning: true)
                }
            }
        }
        
    }
    func handleLoginWithKaKaoTalkApp() async -> Bool{
        await withCheckedContinuation { continuation in
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    //do something
                    _ = oauthToken
                    continuation.resume(returning: true)
                }
            }
        }
        
        
    }
    
    func handleWithKaKaoAccount() async -> Bool{
        await withCheckedContinuation{ continuation in
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("loginWithKakaoAccount() success.")
                    
                    //do something
                    _ = oauthToken
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    @MainActor
    func handleKaKaoLogin(){
        Task {
            
            if (UserApi.isKakaoTalkLoginAvailable()) {
                
                //카카오 앱을 통해 로그인
                UserApi.shared.loginWithKaKaoTalk {(oathToken,error) in
                    if let error = error {
                        print (error)
                    }
                    else {
                        print("loginWithKaKaoTalk() success")
                        
                        _=ouathToken
                    }
                }
                isLoggedIn = await handleLoginWithKaKaoTalkApp()
            } else{ //설치 X일떄 , 웹뷰를 열어 계정으로 로그인
                isLoggedIn = await handleLoginWithKaKaoTalkApp()
            }
        }
        
    }
}
