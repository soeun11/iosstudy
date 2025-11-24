//
//  AnimatableMacro.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

///AnimatableMacro
///(@Animatable)만 쓰면, Shape 전체가 애니메이션 가능(animatable)

import SwiftUI

struct AnimatableMacro: View {
    @State private var expand: Bool = false
    
    var body: some View {
        VStack {
            CircleShape(radius: expand ? 100 : 0)
                .contentShape(.rect)
                .onTapGesture {
                    withAnimation(.smooth) {
                        expand.toggle()
                    }
                }
        }
        .padding()
    }
}

// 직접 Animatable 프로토콜 구현
struct CircleShape: Shape, Animatable {
    var radius: CGFloat
    
    // 애니메이션 가능한 값 지정
    var animatableData: CGFloat {
        get { radius }
        set { radius = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(
            center: .init(x: rect.midX, y: rect.midY),
            radius: radius,
            startAngle: .zero,
            endAngle: .init(degrees: 360),
            clockwise: false
        )
        return path
    }
}

#Preview {
    AnimatableMacro()
}
