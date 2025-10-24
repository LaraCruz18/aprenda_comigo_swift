//
//  ContentView.swift
//  Desafio 05
//
//  Created by Turma01-10 on 24/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
                PinkView()
                    .tabItem {
                        Label("Coelho", systemImage: "hare.fill")
                }
                BlueView()
                    .tabItem {
                        Label("Peixe", systemImage: "fish.fill")
                    }
            
                GreyView()
                .tabItem {
                    Label("Cachorro", systemImage: "dog.fill")
                }
            
            NavigationStack{
                List{
                    Label("Coelho", systemImage: "hare.fill")
                    Label("Peixe", systemImage: "fish.fill")
                    Label("Cachorro", systemImage: "dog.fill")
                }
                .navigationTitle("Lista de bichinho:")
                
            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
