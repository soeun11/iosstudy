//
//  LiquidGlassEffect.swift
//  iOS26Test
//
//  Created by 임소은 on 9/23/25.
//

///LiquidGlassEffect

///GlassEffectContainer(Used For Morphing & Grouping) - 모핑효과와 그룹효과 주기

import SwiftUI

struct LiquidGlassEffect: View {
    var body: some View {
        ZStack {
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipShape(.rect(cornerRadius: 20))
            
            Image(systemName: "suit.heart.fill")
                .font(.title)
                .foregroundStyle(.red.gradient)
                .frame(width: 50, height: 50)
                .glassEffect(.regular.tint(.red.opacity(0.35)).interactive(), in: .circle)
                
        }
    }
}

#Preview {
    LiquidGlassEffect()
}
