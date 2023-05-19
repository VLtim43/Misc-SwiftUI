//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct blueView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, World!")
        }
    }
}

struct blueView_Previews: PreviewProvider {
    static var previews: some View {
        blueView()
    }
}
