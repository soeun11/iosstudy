//
//  DisappearView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct DisappearView: View {
    //MARK: - 로그아웃시 사용 예시
    var body : some View {
        Text("로그아웃 화면")
            .onDisappear{
                saveUserData()
            }
    }
    func saveUserData() {
        print("사용자 데이터 저장완료")
    }
    //MARK: - 네트워크 취소시 사용법
//    @State private var task : Task<(), Never>? = nil //async/await 시스템에서 **비동기 작업(Task)**을 직접 변수로 저장하고 관리하겠다는 뜻
//    var body : some View{
//        Text("데이터 로딩 중...")
//            .onAppear {
//                task = Task {
//                    await networkData()
//                }
//            }
//            .onDisappear {
//                task?.cancel() //화면에서 사라질때 작업 중단
//            }
//    }
//    func networkData() async {
//        do {
//            try await Task.sleep(nanoseconds: 5_000_000_000) //5초 대기
//            print ("데이터 로드 완료")
//        } catch {
//            print("작업이 취소되었습니다.")
//        }
//    }
    //MARK: - 기본사용법
//    var body: some View {
//        Text("Hello, World!")
//            .onDisappear() {
//                print("뷰가 사라졌다 !")
//            }
//    }
}
