//
//  SubmitView.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//

import SwiftUI

struct SubmitView : View {
    @State private var text = ""
    
    var body : some View{
        TextField("입력하세요",text: $text)
            .textFieldStyle(.roundedBorder)
            .onSubmit {
                print("사용자가 입력 완료 : \(text)")
                hideKeyboard() //입력완료 후 키보드 닫기 !
            }
    }
}

func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resolveInstanceMethod(_:)), to: nil, from: nil, for: nil)
}
#Preview {
    SubmitView()
}
