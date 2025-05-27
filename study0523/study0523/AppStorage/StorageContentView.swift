//
//  StorageContentView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//

import SwiftUI

struct StorageContentView : View {
    @AppStorage("username") private var username : String = "sonny"
    
    var body: some View {
           VStack {
               Text("Hello, \(username)!")
               Button("이름 변경") {
                   username = "UMC"
               }
           }
       }
}

#Preview {
    StorageContentView()
}
