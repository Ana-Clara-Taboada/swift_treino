//
//  ContentView.swift
//  Calculadora_Canina
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var humanAge: String = ""
    @State private var dogAge: String = ""
    
    var body: some View {
       
            VStack {
                Image("dog")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .imageScale(.large)
                   
                
                
                Text("Calculadora de idade canina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                
                TextField("Digite a idade humana: ",text: $humanAge)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 250)
                
                
                
                Button(action: calculateDogAge) {
                    Text("Calcular")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button(action: clean) {
                    Text("Limpar")
                        .padding()
                        .frame(width: 150)
                        .background(Color.yellow)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }
                
                if !dogAge.isEmpty{
                    Text("Idade em anos caninos: \(dogAge)")
                        .font(.headline)
                        .padding()
                }
            }
        }
 
    func calculateDogAge(){
        if let age = Int(humanAge){
            let result = age * 7
            dogAge = "\(result) anos"
        }
        else { dogAge = "Digite um número válido!"
            
        }
    }
    func clean(){
        dogAge = " "
        humanAge = " "
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

