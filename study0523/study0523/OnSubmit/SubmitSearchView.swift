//
//  SubmitSearchView.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//

import SwiftUI

struct SubmitSearchView : View {
    @State private var query = ""
    
    var body: some View{
        TextField("검색어 입력", text: $query)
            .textFieldStyle(.roundedBorder)
            .onSubmit {
                search()
            }
    }
    
    func search() {
        guard !query.isEmpty else {
            return
        }
        print("검색실행 : \(query)")
    }
    
}



#Preview {
    SubmitSearchView()
}
