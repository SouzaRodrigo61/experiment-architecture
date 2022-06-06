//
//  PokedexViewState.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 02/02/22.
//

import Foundation

enum PokedexViewState {
    case loading
    case notFound
    case showPokemons
    case failure(Error)
}
