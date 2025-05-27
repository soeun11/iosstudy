//
//  SearchView.swift
//  study0523
//
//  Created by 임소은 on 5/27/25.
//

import SwiftUI

struct SearchView : View {
    @State private var query = ""
    @State private var result  : [String] = []
    
    var body : some View {
        VStack {
            TextField("검색어 입력", text: $query)
                .onChange(of: query) { oldQuery, newQuery in
                    fetchResults(for: newQuery)
                }
            List(result, id: \.self) { result in
                Text(result)
            }
        }
    }
    func fetchResults(for query: String) {
        guard !query.isEmpty else {
            return
        }
        print("' \(query)'에대한 검색 실행")
    }
}

#Preview {
    SearchView()
}
