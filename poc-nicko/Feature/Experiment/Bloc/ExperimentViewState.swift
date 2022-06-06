//
//  ExperimentViewState.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import Foundation

enum ExperimentViewState {
    case loading
    case skeleton
    case notFound
    case showExperiment
    case failure(Error)
}
