//
//  ExperimentView+OnAppear.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import SwiftUI

extension ExperimentView {
    
    func onAppear() {
        switch bloc.state {
        case .skeleton:
            bloc.event = ExperimentEvents.skeletonPage
            break
        default:
            break
        }
    }
}
