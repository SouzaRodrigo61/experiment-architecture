//
//  PokedexBloc.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 02/02/22.
//

import Foundation
import Combine
import SwiftUI

protocol PokedexBlocProtocol: ObservableObject {
    var state: PokedexViewState { get set }
    var cancellable: AnyCancellable? { get }
    
    func fetchAllPokemons()
    func onDisappear()
}

extension PokedexBlocProtocol {
    func fetchAllPokemons() {
        withAnimation(.easeInOut(duration: 1)) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.state = PokedexViewState.showPokemons
            }
        }
    }
    
    func onDisappear() {
        withAnimation(.easeInOut(duration: 1)) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.state = PokedexViewState.loading
            }
        }
    }
}

class PokedexBloc: PokedexBlocProtocol {
    internal var cancellable: AnyCancellable?
    
    @Published var state: PokedexViewState
        
    init(state: PokedexViewState = PokedexViewState.loading) {
        self.state = state
    }
    

}

class PreviewPokedexBloc: PokedexBlocProtocol {
    
    internal var cancellable: AnyCancellable?
    
    @Published var state: PokedexViewState
    
    init(state: PokedexViewState = PokedexViewState.loading) {
        self.state = state
    }
    
}
