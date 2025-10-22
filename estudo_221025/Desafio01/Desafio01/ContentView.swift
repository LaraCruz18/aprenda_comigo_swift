//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma01-10 on 22/10/25.
//

import SwiftUI

struct ContentView: View { //retorna View
    var body: some View {
        VStack { //serve pra agrupar os componentes visuais (Vertical stack), funciona de cima para baixo. Além do Spacer (otimiza o espacamento dos componentes) e HStack(Horizontal stack)
            HStack{
                Rectangle()
                    .size(CGSize(width: 100.0, height: 100.0))
                    .frame(width:100, height: 600)
                    .foregroundColor(.red)

                Spacer()
                Rectangle()
                    .size(CGSize(width: 100.0, height: 100.0))
                    .frame(width:100, height: 600)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
            HStack{
                Rectangle()
                    .size(width: 100.00, height: 100.00)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)

                Spacer()
                Rectangle()
                    .size(width: 100.00, height: 100.00)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .foregroundColor(.yellow)

            }
        }
        .padding()
    }
}

#Preview { //o preview mostra a tela, tirando ela, não aparece o celular.
    ContentView()
}
