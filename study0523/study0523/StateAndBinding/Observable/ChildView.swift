//
//  ChildView.swift
//  study0523
//
//  Created by 임소은 on 5/26/25.
//
import SwiftUI

struct ChildView: View {
    @Bindable var counter: Counter

    var body: some View {
        Button("Child Increment") {
            counter.count += 1
        }
    }
}

