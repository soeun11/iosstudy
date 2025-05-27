//
//  ViewPositionExample.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct ViewPositionExample : View {
    var body : some View {
        GeometryReader {
            geometry in
            VStack {
                Text ("뷰의 X좌표 : \(geometry.frame(in: .global).origin.x)")
                Text ("뷰의 Y좌표 : \(geometry.frame(in: .global).origin.y)")
            }
            .frame(width: 200, height: 100)
            .background(Color.orange.opacity(0.3))
            .position(x:geometry.size.width / 2 , y: geometry.size.height/2)
        }
    }
}

#Preview {
    ViewPositionExample()
}
