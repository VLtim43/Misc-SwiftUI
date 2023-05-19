//
//  ContentView.swift
//  Aula03-B
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("primeira") {
                Text("primeira")
            }
            
            NavigationLink("segunda") {
                newView()
            }
            
            NavigationLink("terceira") {
                Text("Terceira")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
