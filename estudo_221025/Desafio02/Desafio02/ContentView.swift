//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma01-10 on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Image("download")
                    .resizable()
                    .scaledToFit() //ajustar na largura
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) //deixa arredondada

                HStack{ //uma stack horizontal para agrupar as Vstacks
                    Spacer() //para dar espaco de borda das laterais para o texto
                    VStack{
                        Text("gato")
                            .frame(width: 100)
                            .font(.title)
                            .foregroundColor(.yellow)
                            
                        Text("lindinho")
                            .frame(width: 100)
                            .font(.title)
                            .foregroundColor(.brown)
                            
                        
                        Text("gato")
                            .frame(width: 100)
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                    Spacer() //para dar espaco de borda das laterais para o texto
                }
                
            }
            
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
