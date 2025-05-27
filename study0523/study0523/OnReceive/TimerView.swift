//
//  Untitled.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//
import SwiftUI

struct TimerView: View {
    @State private var count = 0

    // 1초마다 신호를 보내는 Publisher
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("카운트: \(count)")
            .onReceive(timer) { _ in
                count += 1
            }
    }
}

#Preview {
    TimerView()
}
