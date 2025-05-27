//
//  EnvironmentExampleView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct EnvironmentExampleView : View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body : some View {
        VStack {
            Text("현재 색상 모드 : \(colorScheme == .dark ?  "다크모드: " : "라이트모드")")
                .padding()
                .background(colorScheme == .dark ? Color.black : Color.white)
            //       .fore(colorScheme == .dark ? Color.white : Color.black)
        }
        .padding()
    }
}

#Preview {
    EnvironmentExampleView()
}
