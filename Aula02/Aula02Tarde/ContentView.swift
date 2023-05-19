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
    @State var imc = "default"
    @State var bgColor = "lightLime"
    
    
    func calc() {
        let doubleAltura = Double(ALTURA) ?? 0.0
        let doublePeso = Double(PESO) ?? 0.0
        
        var someVar = doublePeso / pow(doubleAltura, 2)
        someVar = someVar * 10000
        
        switch someVar {
        case _ where someVar < 18.5:
            self.imc = "baixo peso"
            self.bgColor = "green"
        case _ where someVar > 18.5 && someVar < 24.99:
            self.imc = "normal"
            self.bgColor = "lightLime"
        case _ where someVar > 24.99 && someVar < 29.99:
            self.imc = "sobrepeso"
            self.bgColor = "orange"
        case _ where someVar > 30:
            self.imc = "obeso"
            self.bgColor = "redOrange"
        default:
            self.imc = "default"
        }
                
    }

    var body: some View {
        ZStack {
            
            Color(bgColor).ignoresSafeArea()
            VStack{

                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Insira seu peso", text: $PESO).background(Rectangle().foregroundColor(.white).cornerRadius(5)).padding(.horizontal,50).multilineTextAlignment(.center).font(.title)            .keyboardType(.decimalPad).padding(.bottom, 20)
                
                TextField("Insira sua Altura", text: $ALTURA).background(Rectangle().foregroundColor(.white).cornerRadius(5)).padding(.horizontal,50).multilineTextAlignment(.center).font(.title)            .keyboardType(.decimalPad).padding(.bottom, 20)
            
                Button(action: calc) { Text("Calcular").padding(10)
                        .font(.title)
                        .foregroundColor(Color.white).background(Rectangle().foregroundColor(.blue).cornerRadius(5)).padding(10)
                }
                Text(imc).font(.largeTitle)
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
