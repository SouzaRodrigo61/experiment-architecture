//
//  ExperimentView.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import SwiftUI

struct ExperimentView<Model>: View where Model: ExperimentBlocProtocol {
    
    @StateObject var bloc: Model
    var router: ExperimentRouterProtocol
    
    var body: some View {
        Group {
            switch bloc.state {
            case .skeleton:
                content
                .transition(.scale)
                .redacted(reason: .placeholder)
                .navigationViewStyle(.stack)
            case .showExperiment:
                content
                .transition(.scale)
                .navigationViewStyle(.stack)
            default:
                Text("Não sei o que esta acontecendo")
            }
        }
        .onAppear {
            onAppear()
        }
    }
    
}



struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        let bloc = PreviewExperimentBloc(state: .showExperiment)
        let router = PreviewExperimentRouter()
        
        ExperimentView(bloc: bloc, router: router)
    }
}
