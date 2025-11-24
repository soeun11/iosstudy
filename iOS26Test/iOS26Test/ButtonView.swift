//
//  ButtonView.swift
//  iOS26Test
//
//  Created by 임소은 on 9/23/25.
//

import SwiftUI

struct ButtonView: View {
    @State private var isExpanded: Bool = false
    @Namespace private var animation
    
    var body: some View {
        ZStack {
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipShape(.rect(cornerRadius: 20))
                .overlay(alignment: .bottom) {
                    GlassEffectContainer(spacing: 20) {
                        VStack(spacing: 20) {
                            Spacer()
                            
                            if isExpanded {
                                Group {
                                    Image(systemName: "suit.heart.fill")
                                        .font(.title)
                                        .foregroundStyle(.red.gradient)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "magnifyingglass")
                                        .font(.title)
                                        .foregroundStyle(.white.gradient)
                                        .frame(width: 50, height: 50)
                                }
                                .glassEffect(.regular, in: .capsule)
                                .glassEffectUnion(id: "Group-1", namespace: animation)
                            }
                            
                            Button {
                                withAnimation(.smooth(duration: 1, extraBounce: 0)) {
                                    isExpanded.toggle()
                                }
                            } label: {
                                Image(systemName: "ellipsis")
                                    .font(.title)
                                    .foregroundStyle(.white.gradient)
                                    .frame(width: 40, height: 40)
                            }
                            .buttonStyle(.glass)
                        }
                        .padding(15)
                    }
                }
        }
    }
}

#Preview {
    ButtonView()
}
