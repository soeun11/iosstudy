//
//  TabViewCustomizations.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

///TabView Customizations
///glossy tab bar 기본
import SwiftUI

struct TabViewCustomizations: View {
    var body: some View {
        TabView {
            Tab.init("Home", systemImage: "house.fill") {
                ScrollView(.vertical) {
                    VStack(spacing: 20) {
                        ForEach(0..<50) { index in
                            Text("Music \(index)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black.opacity(0.2))
                                .foregroundStyle(Color.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                }
            }

            Tab.init("Favorite", systemImage: "suit.heart.fill") {
                Text("Favorites")
            }
            Tab.init("Settings", systemImage: "gearshape.fill") {
                Text("Settings")
            }
            //role: .search하면 왼쪽에 검색바 따로 생김 !!
            Tab.init("Search", systemImage: "magnifyingglass", role: .search) {
                Text("Search")
            }
        }
        .tabViewBottomAccessory {
            Text("Custom Music Player!")
                .padding(.horizontal, 15)
        }
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

#Preview {
    TabViewCustomizations()
}
