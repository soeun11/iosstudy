//
//  EditNameReducer.swift
//  TCA
//
//  Created by 소은 on 2/6/26.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct EditNameReducer {
    struct State {
        var name: String
    }
    
    enum Action {
        
    }
    
    
    
}

struct EditNameView : View {
    @Bindable var store: StoreOf<EditNameReducer>
    var body: some View {
        Text("Edit Name View")
    }
}
