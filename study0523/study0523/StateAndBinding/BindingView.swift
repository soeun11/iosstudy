//
//  BindingView.swift
//  study0523
//
//  Created by 임소은 on 5/24/25.
//



import SwiftUI

struct BindingView : View {
    
    @State private var text : String = ""
    
    var body : some View {
        VStack {
            Text ("텍스트 내용 : \(text)")
                .font(.largeTitle)
            
            TextField("아무값을 입력해보세요!", text: $text)
                .frame(width: 350)
        }
    }
}

#Preview() {
    BindingView()
}
