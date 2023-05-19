//
//  ContentView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            whiteView().tabItem {
                Label("White", systemImage: "gearshape")
          }
            redView().tabItem {
                Label("Red", systemImage: "gearshape")
          }
            purpleView().tabItem {
                Label("Purple", systemImage: "gearshape")
          }
            greenView().tabItem {
                Label("Green", systemImage: "gearshape")
          }
            yellowView().tabItem {
                Label("Yellow", systemImage: "gearshape")
          }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
