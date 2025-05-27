
//
//  UserView.swift
//  study0523
//
//  Created by 임소은 on 5/24/25.
//

import SwiftUI

struct ContentView : View {
    
    @State private var count = 0
    
    
    var body : some View {
        VStack {
            Text ("카운트 : \(count)")
                .font(.largeTitle)
            
            Button("증가"){
                count += 1
            }
            .padding()
        }
    }
}

#Preview() {
    ContentView()
}
