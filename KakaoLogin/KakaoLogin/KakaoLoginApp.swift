//
//  KakaoLoginApp.swift
//  KakaoLogin
//
//  Created by 임소은 on 5/24/24.
//
import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth


@main
struct KakaoLoginApp: App {
    @UIApplicationDelegateAdaptor var appDelegate : MyAppDelegate
 
    
    var body: some Scene {
        WindowGroup {
            ContentView().onOpenURL { url in
                if AuthApi.isKakaoTalkLoginUrl(url) {
                    if AuthController.handleOpenUrl(url: url) {
                        // 카카오톡 로그인 URL 처리가 성공했을 때 실행되는 로직을 여기에 추가하세요.
                    }
                }
            }

            
        }
    }
}
