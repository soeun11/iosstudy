//
//  TapGestureView.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//

import SwiftUI

struct TapGestureView : View {
    var body : some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture(count: 2){ //이렇게하면 두번 탭해야 특정조건 실행
                    print("안녕하세요!!~")
                }
            Text("hello world!")
        }
        .padding()
    }
}

#Preview {
    TapGestureView()
}
