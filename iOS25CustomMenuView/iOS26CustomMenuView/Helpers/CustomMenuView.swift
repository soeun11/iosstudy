//
//  CustomMenuView.swift
//  iOS26CustomMenuView
//
//  Created by 임소은 on 9/22/25.
//

import SwiftUI

struct CustomMenuView<Label: View, Content: View>: View {
    var style: CustomMenuStyle = .glass
    var isHapticsEnabled: Bool = true
    @ViewBuilder var label: Label
    @ViewBuilder var content: Content
    
    //View Properties
    //optional Haptics Feedback
    @State private var haptics: Bool = false
    @State private var isExpanded: Bool = false
    
    //For Zoom Transition
    @Namespace private var namespace
    
    var body: some View {
        Button {
            if isHapticsEnabled {
                haptics.toggle()
            }
            
            isExpanded.toggle()
        } label: {
            label
        }
        .applyStyle(style)
        //iOS26이상에서만 작동함
        .matchedTransitionSource(id: "MENUCONTENT", in: namespace)
        .popover(isPresented: $isExpanded) {
            PopOverhelper {
                content
            }
                .presentationCompactAdaptation(.popover)
                .navigationTransition(.zoom(sourceID: "MENUCONTENT", in: namespace))
        }
        .sensoryFeedback(.selection, trigger: haptics)
    }
}

fileprivate  struct PopOverhelper<Content: View>: View {
    @ViewBuilder var content: Content
    @State private var isVisible: Bool = false
    var body: some View {
        content
            .opacity(isVisible ?  1 : 0)
            .task {
                try? await Task.sleep(for: .seconds(0.1))
                withAnimation(.snappy(duration: 0.3, extraBounce: 0)) {
                    isVisible = true
                }
            }
            .presentationCompactAdaptation(.popover)
    }
}

///menu style
enum CustomMenuStyle: String, CaseIterable {
    case glass = "Glass"
    case glassProminet = "Glass Prominent"
}

fileprivate extension View {
    @ViewBuilder
    func applyStyle(_ style: CustomMenuStyle) -> some View {
        switch style {
        case .glass:
            self
                .buttonStyle(.glass)
        case .glassProminet:
            self
                .buttonStyle(.glassProminent)
        }
    }
}
#Preview {
    ContentView()
}
 
