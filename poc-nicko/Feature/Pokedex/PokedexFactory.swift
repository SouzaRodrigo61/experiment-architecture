//
//  PokedexFactory.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 02/02/22.
//


import SwiftUI

enum PokedexFactory {
    
       public static func builder() -> some View {
           
           let bloc = PokedexBloc()
           let router = PokedexRouter()
           let view = PokedexView(bloc: bloc, router: router)
           
           return view
       }
}

