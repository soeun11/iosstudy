//
//  BackgroundExtensionEffect.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

///backgroundExtensionEffect
///배경 꽉 채워줌 - 노치 + 하단 부분 까지

import SwiftUI

struct BackgroundExtensionEffect: View {
    var body: some View {
        GeometryReader{
            let size = $0.size
            
            Image(.pic)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height)
                .clipped()
                .backgroundExtensionEffect()
        }
    }
}

#Preview {
    BackgroundExtensionEffect()
}
