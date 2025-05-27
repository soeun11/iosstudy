//
//  CounterView.swift
//  study0523
//
//  Created by 임소은 on 5/25/25.
//


//MARK: - Bindable
import SwiftUI
import Observation

@Observable
class Counter {
    var count = 0
}

struct CounterView: View {
    private var counter = Counter()

    var body: some View {
        VStack {
            Text("Count: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            ChildView(counter: counter)
        }
    }
}


//MARK: - Observable

//import SwiftUI
//
//struct CounterView : View {
//    var viewModel : CounterViewModel = .init()
//    
//    var body : some View {
//        VStack{
//            
//            Text("\(viewModel.count)")
//            
//            Button(action: {
//                viewModel.count += 1
//            }, label: {
//                Text("카운트 증가합니다")
//            })
//        }
//        .padding()
//    }
//}
//MARK: - StateObject
//struct CounterView : View {
//    
//    @StateObject var viewModel : CounterViewModel = .init()
//    
//    var body : some View {
//        VStack {
//            Text("\(viewModel.count)")
//            
//            Button(action: {
//                viewModel.count += 1
//            }, label: {
//                Text ("카운트 증가 버튼")
//            })
//            
//                //Text("현재 State 변수 값 : \(isClicked)")
//              //CustomButton(isClicked : $isClicked)
//        }
//    }
//}

#Preview {
    CounterView()
}
