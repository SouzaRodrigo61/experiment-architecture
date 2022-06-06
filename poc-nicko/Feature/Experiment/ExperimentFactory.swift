//
//  ExperimentFactory.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import SwiftUI

enum ExperimentFactory {
 
    public static func builder() -> some View {
        
        let bloc = ExperimentBloc()
        let router = ExperimentRouter()
        let view = ExperimentView(bloc: bloc, router: router)
        
        return view
    }
    
}
