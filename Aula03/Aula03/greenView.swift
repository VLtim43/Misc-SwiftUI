//
//  blueView.swift
//  Aula03
//
//  Created by StudentBackup01 on 19/05/23.
//

import SwiftUI

struct greenView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("GREEN")
        }
    }
}

struct greenView_Previews: PreviewProvider {
    static var previews: some View {
        greenView()
    }
}
