//
//  ExperimentBloc.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import Foundation
import Combine
import SwiftUI

///
/// Ainda não estou convicido de trabalhar o fluxo de dados utilizando o didSet do event
///  E para ter manipulação dos eventos comos e fosse um redux do React...
///  
/// E bem funcional porem não sei se a melhor forma de manipulação dos dados
///

protocol ExperimentBlocProtocol: ObservableObject {
    var state: ExperimentViewState { get }
    var event: ExperimentEvents? { get set }
    var cancellable: AnyCancellable? { get }
    
    func handleViewEvent(event: ExperimentEvents?)
}

class ExperimentBloc: ExperimentBlocProtocol {
    
    internal var cancellable: AnyCancellable?
    
    @Published var state: ExperimentViewState
    
    var event: ExperimentEvents? {
        didSet {
            self.handleViewEvent(event: event)
        }
    }
    
    init(state: ExperimentViewState = ExperimentViewState.skeleton) {
        self.state = state
    }
    
    func handleViewEvent(event: ExperimentEvents?) {
        switch event {
        case .skeletonPage:
            withAnimation(.easeOut(duration: 2)) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.state = ExperimentViewState.showExperiment
                }
            }
            break
        default:
            break
        }
    }
}

class PreviewExperimentBloc: ExperimentBlocProtocol {
    
    internal var cancellable: AnyCancellable?
    
    @Published var state: ExperimentViewState
    
    var event: ExperimentEvents? {
        didSet {
            self.handleViewEvent(event: event)
        }
    }
    
    init(state: ExperimentViewState = ExperimentViewState.skeleton) {
        self.state = state
    }
    
    func handleViewEvent(event: ExperimentEvents?) {
        switch event {
        case .skeletonPage:
            withAnimation(.easeInOut(duration: 1)) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.state = ExperimentViewState.showExperiment
                }
            }
            break
        default:
            break
        }
    }
}
