//
//  ExperimentRouter.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import SwiftUI

protocol ExperimentRouterProtocol {
    func toContentView() -> AnyView
    func toMainView() -> AnyView
    func toPokemonView() -> AnyView
}

struct ExperimentRouter: ExperimentRouterProtocol {
    
    func toContentView() -> AnyView {
        let view = ContentView()
        
        return AnyView(view)
    }
    
    func toMainView() -> AnyView {
        let view = MainFactory.builder()
        return AnyView(view)
    }
    
    func toPokemonView() -> AnyView {
        let view = PokedexFactory.builder()
        return AnyView(view)
    }
}

struct PreviewExperimentRouter: ExperimentRouterProtocol {
    
    func toContentView() -> AnyView {
        let view = Text("Tetes")
        
        return AnyView(view)
    }
    
    func toMainView() -> AnyView {
        let view = MainFactory.builder()
        return AnyView(view)
    }
    
    func toPokemonView() -> AnyView {
        let view = PokedexFactory.builder()
        return AnyView(view)
    }
}
