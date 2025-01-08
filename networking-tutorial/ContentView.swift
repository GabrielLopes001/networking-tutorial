//
//  ContentView.swift
//  networking-tutorial
//
//  Created by Gabriel Lopes on 06/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.posts) { post in
                    
                    Text(post.title)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    
                    Text(post.body)
                        .font(.subheadline)
                }
                .listStyle(.plain)
                
                Divider()
                
                Button {
                    viewModel.fetch() // fazendo a chamada ao clicar no botao
                } label: {
                    Text("Call API")
                        .foregroundStyle(!viewModel.posts.isEmpty ? .gray : .black)
                }
                .padding(.horizontal, 10)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(lineWidth: 1)
                }
                .disabled(!viewModel.posts.isEmpty)
            }
            .navigationTitle("Posts")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
