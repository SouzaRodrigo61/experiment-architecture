//
//  PokeAPIRequestable.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 04/02/22.
//

import Foundation

protocol PokeAPIRequestable {

    var path: String { get }
}

extension PokeAPIRequestable {

    var urlString: String {
        return "https://pokeapi.co/api/v2/\(self.path)"
    }

    var method: HTTPMethod {
        return .GET
    }
}
