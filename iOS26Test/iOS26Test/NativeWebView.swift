//
//  NativeWebView.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

///webView
///앱 화면에서 Web페이지 띄우는것

import SwiftUI
import WebKit

struct NativeWebView: View {
    @State private var page = WebPage()
    
    var body: some View {
        WebView(page)
            //페이지 줌 기능 제거
            .webViewMagnificationGestures(.disabled)
            .onAppear {
                page.load(URLRequest(url: url))
            }
    }
    
    var url: URL {
        URL(string: "https://developer.apple.com")!
    }
}

#Preview {
    NativeWebView()
}
