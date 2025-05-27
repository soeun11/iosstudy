//
//  BottomView.swift
//  study0523
//
//  Created by 임소은 on 5/25/25.
//

import SwiftUI

struct BottomView: View {
    @ObservedObject var viewModel: TextViewModel
    
    init(viewModel: TextViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("하위 뷰 입니다.")
            Text("현재 입력된 값 : \(viewModel.inputText)")
            Button("강제 초기화") {
                viewModel.inputText = "초기화됨"
            }
            Spacer()
        }
    }
}

