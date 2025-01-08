//
//  ViewModel.swift
//  networking-tutorial
//
//  Created by Gabriel Lopes on 06/01/25.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var posts: [Posts] = [] // iniciando uma variavel "escutavel" do tipo [Posts]
    
    // funcao que chama o service para fazer o networking
    func fetch() {
        Task {
            do {
                let data = try await Service.shared.fetch()
                
                // garantindo a att na thread principal
                DispatchQueue.main.async {
                    self.posts = data // publicando na minha variavel
                }
            } catch {
                print("DEBUG: Erro fetch Viewmodel \(error.localizedDescription)")
            }
        }
    }
}
