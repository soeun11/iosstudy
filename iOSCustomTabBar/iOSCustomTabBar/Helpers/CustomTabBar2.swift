//
//  CustomTabBar2.swift
//  iOSCustomTabBar
//
//  Created by 임소은 on 10/2/25.
//

import SwiftUI



struct CustomTabBar2: UIViewRepresentable {
    var size: CGSize
    var barTint: Color = .gray.opacity(0.5)
   
    @Binding var activeTab: CustomTab
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    func makeUIView(context: Context) -> UISegmentedControl {
        let items = CustomTab.allCases.compactMap({_ in "" })
        let control = UISegmentedControl(items: items)
        control.selectedSegmentIndex = 0
   
        
        DispatchQueue.main.async {
            for subview in control.subviews {
                //뒷베경 투명하게 만드는 부분
                if subview is UIImageView && subview != control.subviews.last {
                    subview.alpha = 0
                }
            }
        }
        control.selectedSegmentTintColor = UIColor(barTint)
        control.addTarget(context.coordinator,
                          action: #selector(context.coordinator.tabSeleted(_:)),
                          for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func sizeThatFits(_ proposal: ProposedViewSize, uiView: UISegmentedControl, context: Context) -> CGSize? {
      return size
    }
    
    class Coordinator: NSObject {
        var parent: CustomTabBar2
        init(parent: CustomTabBar2) {
            self.parent = parent
        }
        
        @objc func tabSeleted(_ control: UISegmentedControl) {
            parent.activeTab = CustomTab.allCases[control.selectedSegmentIndex]
        }
    }
}

#Preview {
    ContentView()
}
