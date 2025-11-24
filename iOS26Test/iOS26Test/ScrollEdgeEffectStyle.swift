////
////  ScrollEdgeEffectStyle.swift
////  iOS26Test
////
////  Created by 임소은 on 9/24/25.
////
//
//import SwiftUI
//import FoundationModels
//
//struct ScrollEdgeEffectStyle: View {
//    @State private var todos: [Todo] = []
//    @State private var isWriting: Bool = false
//    
//    var body: some View {
//        NavigationStack {
//            List {
//                ForEach(todos) { todo in
//                    Text(todo.task)
//                }
//            }
//            .navigationTitle("Todo")
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("", systemImage: "apple.intelligence") {
//                        let prompt = "Create 10 todo list items!"
//                        Task {
//                            do {
//                                let session = LanguageModelSession()
//                                
//                                let response = session.streamResponse(generating: [Todo].self) {
//                                    prompt
//                                }
//                                isWriting = true
//                                for try await chunkTodos in response {
//                                    self.todos = chunkTodos.compactMap({
//                                        if let id = $0.id, let task = $0.task {
//                                            return .init(id: id, task: task)
//                                        }
//                                        
//                                        return nil
//                                    })
//                                }
//                                isWriting = false
//                            } catch {
//                                isWriting = false
//                                print(error.localizedDescription)
//                            }
//                        }
//                    }
//                    .disabled(isWriting)
//                }
//            .scrollEdgeEffectStyle(.hard, for: .top)
//        }
//    }
//}
//
//@Generable
//struct Todo: Identifiable {
//    var id: String
//    var task: String
//}
//
//#Preview {
//    ScrollEdgeEffectStyle()
//}
