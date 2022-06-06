//
//  ExperimentView+Components.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 31/01/22.
//

import SwiftUI

extension ExperimentView {
    
    var content: some View {
        NavigationView {
            VStack {
                List {
                    profile
                    
                    menu
                    
                    option
                    
                    option
                    
                    bottom
                }
                .listStyle(.insetGrouped)
            }
            .navigationTitle("Account")
        }
    }
    
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
            Text("Rodrigo Santos")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.small)
                Text("Brasil")
            }
            .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var menu: some View {
        Section {
            NavigationLink(destination: router.toContentView) {
                Label("Settings", systemImage: "gear")
            }
            
            NavigationLink {
                Text("Billing")
            } label:  {
                Label("Billing", systemImage: "creditcard")
            }
            
            NavigationLink(destination: router.toPokemonView) {
                Label("Pokemon", systemImage: "gamecontroller")
            }
            
            NavigationLink(destination: router.toMainView) {
                Label("Main", systemImage: "person.crop.square.filled.and.at.rectangle")
            }
        }
        .accentColor(.primary)
    }
    
    var option: some View {
        Section {
            
            Label("Help", systemImage: "questionmark")
            
            Label("Help", systemImage: "questionmark")
            
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var bottom: some View {
        VStack(spacing: 8) {
            Text("versao v.XPQD")
        }
        .foregroundColor(.secondary)
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ExperimentViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        let bloc = PreviewExperimentBloc(state: .showExperiment)
        let router = PreviewExperimentRouter()
        
        ExperimentView(bloc: bloc, router: router)
    }
}

