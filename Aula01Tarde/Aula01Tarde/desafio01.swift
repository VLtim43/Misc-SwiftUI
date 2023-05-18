//
//  ContentView.swift
//  Aula01Tarde
//
//  Created by StudentBackup01 on 17/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("bg").resizable().scaledToFit()
                .padding(15)
            VStack {
                Text("Hackatruck").font(.largeTitle).fontWeight(.medium).foregroundColor(Color.blue)
                HStack {
                    Text("My").font(.title).fontWeight(.medium).foregroundColor(Color.yellow)
                    Text("Space").font(.title).fontWeight(.medium).foregroundColor(Color.red)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
