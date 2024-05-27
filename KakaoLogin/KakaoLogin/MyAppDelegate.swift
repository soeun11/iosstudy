//
//  MyAppDelegate.swift
//  KakaoLogin
//
//  Created by 임소은 on 5/24/24.
//
import KakaoSDKAuth
import Foundation
import UIKit
import KakaoSDKCommon

class MyAppDelegate : UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAONATIVE_APP_KEY"] ?? ""
        
        print("KaKaoAppKey : \(kakaoAppKey)")
                 
        // Kakao SDK 초기화
        
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
        
        return true
        
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                return AuthController.handleOpenUrl(url: url)
            }

            return false
        }
   // func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: //UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        //let scenceConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        
        //scenceConfiguration.delegateClass = MyScenceDelegate.self
        
        
        //return scenceConfiguration
    }


