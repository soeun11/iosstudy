//
//  taskView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct taskView: View {
//MARK: - 네트워크 호출 시 사용방법
    @State var data: String = "로딩중"
    
    var body : some View {
        Text(data)
            .task {
                fetchData()
            }
    }
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now()+2)
        {
            data = "데이터로드완료"
        }
    }
    
//MARK: - 기본사용법
//    var body: some View {
//        Text("hello, swiftUI")
//            .task {
//                print("뷰가 나타났다 !")
//            }
//    }
}
