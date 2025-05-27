//
//  ChangeView.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//

import SwiftUI

struct ChangeView : View {
    @State private var text = ""
    
    var body : some View {
        TextField("입력하세요", text: $text)
            .padding()
            .onChange(of: text) { oldValue, newValue in
                print("텍스트 변경됨 : \(newValue)")
            }
    }
}


#Preview {
    ChangeView()
}
