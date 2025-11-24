//
//  DrawOnOff.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

import SwiftUI

struct DrawOnOff: View {
    @State private var isActive: Bool = false
    var body: some View {
        Image(systemName: "square.and.arrow.up")
            .font(.largeTitle)
            .foregroundStyle(.black)
            .symbolEffect(.drawOff, isActive: isActive)
            .onTapGesture {
                isActive.toggle()
            }
        
    }
}

#Preview {
    DrawOnOff()
}
