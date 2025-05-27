//
//  AppearView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct AppearView : View {
    //MARK:  - 네트워크 호출 시 사용방법
    @State private var data: String = "로딩중"
    
    var body : some View {
        Text(data)
            .onAppear(){
                fetchDate()
            }
    }
    func fetchDate() {
        DispatchQueue.main.asyncAfter(deadline: .now()+2) { //일정시간 뒤에 코드 실행
            data = "데이터 로드 완료"
        }
    }
    
    
    //MARK: - 기본사용법
    //    var body: some View {
    //        Text("hello, SwiftUI")
    //            .onAppear {
    //                print("뷰가 나타났습니다!")
    //            }
    //    }
    //
}
