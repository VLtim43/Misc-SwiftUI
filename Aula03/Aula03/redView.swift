//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct redView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("RED")
        }
    }
}

struct redView_Previews: PreviewProvider {
    static var previews: some View {
        redView()
    }
}
