//
//  CustomTabBar.swift
//  iOSCustomTabBar
//
//  Created by 임소은 on 10/2/25.
//

import SwiftUI



struct CustomTabBar<TabItemView: View>: UIViewRepresentable {
    var size: CGSize
    var activeTint: Color = .blue
    var barTint: Color = .gray.opacity(0.5)
   
    @Binding var activeTab: CustomTab
    @ViewBuilder var tabItemView: (CustomTab) -> TabItemView
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    func makeUIView(context: Context) -> UISegmentedControl {
        let items = CustomTab.allCases.map(\.rawValue)
        let control = UISegmentedControl(items: items)
        control.selectedSegmentIndex = 0
        
        //Converting Tab Item View  into a Image
        for (index, tab) in CustomTab.allCases.enumerated() {
            // SwiftUI View → 이미지 렌더러 생성
             let renderer = ImageRenderer(content: tabItemView(tab))
             
             // 이미지의 배율 (해상도) 설정 (2 = Retina 스케일)
             renderer.scale = 2
             
             // SwiftUI View를 UIImage로 변환
             let image = renderer.uiImage
             
             // 세그먼트 컨트롤의 해당 인덱스에 이미지 넣기
             control.setImage(image, forSegmentAt: index)
        }
        
        DispatchQueue.main.async {
            for subview in control.subviews {
                //뒷베경 투명하게 만드는 부분
                if subview is UIImageView && subview != control.subviews.last {
                    subview.alpha = 0
                }
            }
        }
        control.selectedSegmentTintColor = UIColor(barTint)
        control.setTitleTextAttributes([.foregroundColor: UIColor(activeTint)], for: .selected)
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
        var parent: CustomTabBar
        init(parent: CustomTabBar) {
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
