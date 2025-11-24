//
//  ContentView.swift
//  iOS25CustomMenuView
//
//  Created by 임소은 on 9/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 25) {
                Image(uiImage: .bg)
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: 220)
        
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Transaction History")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text("12 Jun 2025 - 20 Sep 2025")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                ///Custom Menu
                    CustomMenuView(style: .glass) {
                        Image(systemName: "calendar")
                            .font(.title3)
                            .frame(width: 40, height: 30)
                    } content: {
                        DateFilterView()
                    }
                }
            }
            .padding(15)
            .padding(.bottom, 700)
        }

    }
}

//A custom Data filter view sample UI
struct DateFilterView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("Filter Date Range")
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
            
            DatePicker("Start Date", selection: .constant(.now), displayedComponents: [.date])
                .datePickerStyle(.compact)
                .font(.caption)
            
            DatePicker("End Date", selection: .constant(.now), displayedComponents: [.date])
                .font(.caption)
            
            VStack(spacing: 10) {
                Button {
                    dismiss()
                } label: {
                    Text("Apply")
                        .font(.callout)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 2)
                }
                .tint(.blue)
                .buttonStyle(.glassProminent)
                
                Text("Maxinum Range is 1 Year!")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .padding(.top, 10)
        }
        .padding(15)
        .frame(width: 250, height: 250)
        .interactiveDismissDisabled()
    }
}
#Preview {
    ContentView()
}
