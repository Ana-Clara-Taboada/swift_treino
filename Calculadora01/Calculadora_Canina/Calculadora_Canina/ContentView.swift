//
//  ContentView.swift
//  Calculadora_Canina
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idade: String = ""
    @State private var resultado: String = ""
    var body: some View {
        VStack {
            Image(systemName: "dog")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de idade canina")
            TextField(
                    "Digite sua idade: ",
                    text: $idade
                    )
                    Button("calcular") {
                            calcular()
                    }
                    .padding()
                    .frame(width: 150)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                
            }
        }
    func calcular(){
       let $resultado = int(idade) * 7
        
        
    }
    
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

