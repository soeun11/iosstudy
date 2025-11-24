//
//  ToolBarSpacer.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

import SwiftUI

struct ToolBarSpacer: View {
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle("Todo's")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button("", systemImage: "suit.heart.fill") { }
                        Button("", systemImage: "magnifyingglass") { }
                    }
                }

                ToolbarSpacer(.fixed, placement: .topBarTrailing)

                ToolbarItem(placement: .topBarTrailing) {
                    Button("", systemImage: "person.fill") { }
                }
            }
        }
    }
}

#Preview {
    ToolBarSpacer()
}
