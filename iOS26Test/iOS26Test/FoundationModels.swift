//
//  FoundationModels.swift
//  iOS26Test
//
//  Created by 임소은 on 9/23/25.
//

///FoundationModels(SDK)
///애플에서 제공하는 기본 AI툴 !
///디바이스가 오프라인 상태에서도 동작한다

import SwiftUI
import FoundationModels

struct FoundationModels: View {
    @State private var prompt: String = ""
    @State private var answer: String = ""
    @State private var disableControls: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                if answer.isEmpty {
                    // 답변이 없을 때 표시할 기본 텍스트
                    Text("Enter a prompt below and press the button to get a response.")
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(30)
                } else {
                    // 답변이 있을 때 표시
                    Text(answer)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding(15)
                }
            }
            .safeAreaBar(edge: .bottom) {
                HStack(spacing: 10) {
                    TextField("Prompt", text: $prompt)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .glassEffect(.regular, in: .capsule)
                    
                    Button {
                        Task {
                            guard !prompt.isEmpty else { return }
                            
                            do {
                                let session = LanguageModelSession()
                                disableControls = true
                                
                                let response = session.streamResponse(to: prompt)
                                for try await chunk in response {
                                    self.answer += chunk.content
                                }

                                disableControls = false
                            } catch {
                                disableControls = false
                                print(error.localizedDescription)
                            }
                        }
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .frame(width: 30, height: 30)
                    }
                    .buttonStyle(.glass)

                }
                .disabled(disableControls)
                .padding(15)
            }
            .navigationTitle("Foundation Model")
        }
    }
}

#Preview {
    FoundationModels()
}

