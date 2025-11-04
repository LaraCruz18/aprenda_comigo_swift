//
//  ContentView.swift
//  Desafio 12
//
//  Created by Turma01-10 on 04/11/25.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-2.5-flash", apiKey: APIKey.default)
    @State private var textInput = ""
    @State private var aiResponse = ""
    @State var bgColor = Color.cinza
    
    var body: some View {
        VStack {
            Image(systemName: "rectangle.and.text.magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            
            Text("Pergunte AI!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .fontDesign(.rounded)
                .padding()
            
            ScrollView{
                Text("\(aiResponse)")
            }
            
            HStack{
                TextField("Faça sua pergunta...", text: $textInput)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                    
                
                Button {
                    sendMessage()
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Circle())
                }
            }
            
        }
        .padding()
        
    }
    
    func sendMessage() {
        aiResponse = ""
        Task {
            do {
                let response = try await model.generateContent(textInput)
                guard let text = response.text else {
                    aiResponse = "AI, você me pegou... não sei te responder :("
                    return
                }
                textInput = ""
                aiResponse = text
            } catch {
                aiResponse = "Algo deu errado!\n\(error.localizedDescription)"
            }
        }
    }
}

#Preview {
    ContentView()
}
