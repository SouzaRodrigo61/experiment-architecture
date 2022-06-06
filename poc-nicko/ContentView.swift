//
//  ContentView.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Testestes!")
            .padding()
            .onAppear {
                print("On appear")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
