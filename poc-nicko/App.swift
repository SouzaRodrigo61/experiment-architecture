//
//  poc_nickoApp.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 28/01/22.
//

import SwiftUI

@main
struct Application: App {
    
    var body: some Scene {
        WindowGroup {
            Group {
                let factory = ExperimentFactory.builder()
                factory
            }

        }
    }
    
}
