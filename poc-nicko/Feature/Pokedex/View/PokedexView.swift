//
//  PokedexView.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 02/02/22.
//

import SwiftUI

struct PokedexView<Model>: View where Model: PokedexBlocProtocol {
    
    @StateObject var bloc: Model
    var router: PokedexRouterProtocol
    
    var body: some View {
        Group {
            switch bloc.state {
            case .loading:
                ProgressView()
            case .showPokemons:
                VStack {
                    Text("Chegamos ate aqui")
                }
            default:
                Text("Não sei o que esta acontecendo")
            }
        }
        .onAppear {
            bloc.fetchAllPokemons()
        }
        .onDisappear {
            bloc.onDisappear()
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        
        let bloc = PreviewPokedexBloc(state: PokedexViewState.showPokemons)
        let router = PreviewPokedexRouter()
        
        PokedexView(bloc: bloc, router: router)
    }
}
