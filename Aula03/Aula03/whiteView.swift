//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct whiteView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            Text("WHITE")
        }
    }
}

struct whiteView_Previews: PreviewProvider {
    static var previews: some View {
        whiteView()
    }
}
