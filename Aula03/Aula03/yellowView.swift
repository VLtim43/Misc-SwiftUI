//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct yellowView: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            Text("YELLOW")
        }
    }
}

struct yellowView_Previews: PreviewProvider {
    static var previews: some View {
        yellowView()
    }
}
