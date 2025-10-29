//
//  ContentView.swift
//  Desafio 09
//
//  Created by Turma01-10 on 29/10/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var background : Color = Color.vermelhoEscuro
    
    var body: some View {
        NavigationStack{
            background
                .ignoresSafeArea()
            
                .onAppear(){
                    viewModel.fetch()
                }
        }
    }
}


#Preview {
    ContentView()
}
