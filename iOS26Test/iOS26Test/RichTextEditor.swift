//
//  RichTextEditor.swift
//  iOS26Test
//
//  Created by 임소은 on 9/24/25.
//

///Rich TextEditor
///기본 TextEditor 또한 몇 가지 유용한 리치 텍스트 에디터 옵션을 사용가능하다

import SwiftUI

struct RichTextEditor: View {
    @State private var richText = AttributedString()
    var body: some View {
        TextEditor(text: $richText)
            .frame(height: 300)
            .padding(15)
        
    }
}

#Preview {
    RichTextEditor()
}
