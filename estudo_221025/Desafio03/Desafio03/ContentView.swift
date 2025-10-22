//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma01-10 on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Bem vindo, fulano!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            TextField("Digite seu nome", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                
            ZStack{
                Image("flor")
                    .resizable()
            }
            
            Button("Entrar") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            
                
        }
        
    }
}

#Preview {
    ContentView()
}
