//
//  ContentView.swift
//  Aula02Tarde
//
//  Created by StudentBackup01 on 18/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var PESO: String = ""
    @State var ALTURA: String = ""
    
    
    func calc() {
                            
            let mass = Double(PESO) ?? 1
            let height = Double(ALTURA) ?? 1
            var bmi = mass / pow(height, 2)
            
                        
            bmi = bmi * 10000
 print(bmi)
            

        
    }

    var body: some View {
        ZStack {
            Color("lightLime").ignoresSafeArea()
            VStack{

                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Insira seu peso", text: $PESO).background(Rectangle().foregroundColor(.white).cornerRadius(5)).padding(.horizontal,50).multilineTextAlignment(.center).font(.title)            .keyboardType(.decimalPad).padding(.bottom, 20)
                
                TextField("Insira sua Altura", text: $ALTURA).background(Rectangle().foregroundColor(.white).cornerRadius(5)).padding(.horizontal,50).multilineTextAlignment(.center).font(.title)            .keyboardType(.decimalPad).padding(.bottom, 20)
                
                
                Button(action: calc) { Text("Calcular").padding(10)
                        .font(.title)
                        .foregroundColor(Color.white).background(Rectangle().foregroundColor(.blue).cornerRadius(5)).padding(10)
                }
                
                Spacer()
                
                Image("tabela").resizable().frame(width: 480, height: 240).padding(-20)

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
