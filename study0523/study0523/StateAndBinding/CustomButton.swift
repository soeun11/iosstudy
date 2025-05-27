//
//  CustomButton.swift
//  study0523
//
//  Created by 임소은 on 5/25/25.
//

import SwiftUI

struct CustomButton : View {
    @Binding var isClikced : Bool

    init(isClicked :Binding<Bool>) {
        self._isClikced = isClicked
    }
    
    var body : some View {
        Button(action : {
            isClikced.toggle()
            print("하위 뷰에서 클릭해서 값을 변경함 : \(isClikced)")
        }, label: {
            Text("상위 뷰의 값을 State 값 변경")
        })
    }
}
