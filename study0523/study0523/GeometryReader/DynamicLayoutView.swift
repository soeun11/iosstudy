//
//  DynamicLayoutView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct DynamicLayoutView : View {
    var body : some View {
        GeometryReader { geometry in
            VStack {
                Text("전체화면의 50%인 박스")
                    .frame(width: geometry.size.width * 0.5 ,height:geometry.size.height * 0.3)
                    .background(Color.green.opacity(0.5))
            }
            .frame(width : geometry.size.width, height: geometry.size.height)
            .border(Color.red)
            
        }
    }
}


#Preview {
    DynamicLayoutView()
}
