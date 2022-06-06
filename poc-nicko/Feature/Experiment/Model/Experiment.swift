//
//  Experiment.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import Foundation

struct Experiment {
    let id: UUID
    let name: String
    
    init(
        id: UUID = UUID(),
        name: String
    ) {
        self.id = id
        self.name = name
    }
}
