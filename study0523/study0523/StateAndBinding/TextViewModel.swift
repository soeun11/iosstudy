//
//  TextViewModel.swift
//  study0523
//
//  Created by 임소은 on 5/25/25.
//
import SwiftUI

class TextViewModel : ObservableObject {
    @Published var inputText : String = ""
    
    init() {
        print ("새로운 TextViewModel 인스턴스 생성됨")
    }
}
