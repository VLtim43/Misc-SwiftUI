//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct purpleView: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Text("PURPLE")
        }
    }
}

struct purpleView_Previews: PreviewProvider {
    static var previews: some View {
        purpleView()
    }
}
