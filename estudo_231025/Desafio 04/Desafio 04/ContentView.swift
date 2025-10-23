//
//  ContentView.swift
//  Desafio 04
//
//  Created by Turma01-10 on 23/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var distancia: Double = 0
    @State private var tempo: Double = 0
    @State var resultado: Double = 0
    @State var imagem: String = "bola"
    
    var body: some View {

        ZStack{
            Color.gray
                .ignoresSafeArea(edges: .top)
                .ignoresSafeArea(edges: .bottom)
    
            VStack{
                
                Text("Digite a distância (km):")
                
                TextField("Distância", value: $distancia, format: .number)
                    .background(Color.white)
                    .frame(width: 200)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                
                Text("Digite o tempo (h):")
                
                TextField("Tempo", value: $tempo, format: .number)
                    .background(Color.white)
                    .frame(width: 200)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                
                
                
                
                
                Button("Calcular"){
                    if tempo > 0{
                        self.resultado = distancia/tempo
                        
                    } else {
                        resultado = 0
                    }
                    
                
                    if resultado >= 0 && resultado <= 9.9{
                        self.imagem = "turtle"
                    }
                    else if resultado >= 10 && resultado <= 29.9{
                        self.imagem = "elefante"
                    }
                    else if resultado >= 30 && resultado <= 69.9{
                        self.imagem = "avestruz"
                    }
                    else if resultado >= 70 && resultado <= 89.9{
                        self.imagem = "leao"
                    }
                    else if resultado >= 90 && resultado <= 130{
                        self.imagem = "guepardo"
                    } else {
                        self.imagem = "bola"
                    }
                   
                    
                }
                    .foregroundColor(Color.yellow)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 90, height: 90)))
                
                Text("\(resultado) km/h")
                    
                
                Image(imagem)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                
                
                ZStack{
                    
                    Color.black
                        .frame(width: 300, height: 150)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
                    VStack{
                        HStack{
                            Text("TARTARUGA (0-9.9km/h)")
                                .foregroundStyle(Color.white)
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.verdeClaro)
                        }
                        
                        HStack{
                            Text("ELEFANTE (10-29.9km/h)")
                                .foregroundStyle(Color.white)
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.azulClaro)
                        }
                        
                        HStack{
                            Text("AVESTRUZ (30-69.9km/h)")
                                .foregroundStyle(Color.white)
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.laranjaClaro)
                        }
                        
                        HStack{
                            Text("LEÃO (70-89.9km/h)")
                                .foregroundStyle(Color.white)
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.amareloClaro)
                        }
                        
                        HStack{
                            Text("GUEPARDO (90-130km/h)")
                                .foregroundStyle(Color.white)
                                Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.vermelhoClaro)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        

    }
}

#Preview {
    ContentView()
}
