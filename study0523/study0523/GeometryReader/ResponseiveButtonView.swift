//
//  ResponseiveButtonView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct ResponseiveButtonView : View {
    var body : some View {
        GeometryReader {geometry in
            VStack {
                Text("반응형 버튼")
                    .frame(width : geometry.size.width * 0.6, height: geometry.size.height * 0.1)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ResponseiveButtonView_Previews : PreviewProvider {
    static let devices = ["iphone 11" , "iphone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            ResponseiveButtonView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
