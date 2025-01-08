//
//  Service.swift
//  networking-tutorial
//
//  Created by Gabriel Lopes on 06/01/25.
//

import Foundation

class Service {
    
    static let shared = Service()
    let url = "https://jsonplaceholder.typicode.com/posts"
    
    // funcao que espera um retorno do tipo [Posts]
    func fetch() async throws -> [Posts] {
        guard let urlString = URL(string: url) else { return [] } // certificando que eh uma URL valida
        
        let (data, _) = try await URLSession.shared.data(from: urlString) // fazendo uma chamada
        
        let posts = try JSONDecoder().decode([Posts].self, from: data) // decodificando com base no meu Model
        
        return posts // retornando
    }
}
