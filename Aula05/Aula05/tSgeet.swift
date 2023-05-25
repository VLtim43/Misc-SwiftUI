//
//  tSgeet.swift
//  Aula05
//
//  Created by Student22 on 23/05/23.
//

import SwiftUI

struct tSgeet: View {
    @State var shouldPresentSheet = false

        var body: some View {
            VStack {
                Button("Present Sheet") {
                    shouldPresentSheet.toggle()
                }
                    /// Present a sheet once `shouldPresentSheet` becomes `true`.
                    .sheet(isPresented: $shouldPresentSheet) {
                        print("Sheet dismissed!")
                    } content: {
                        AddArticleView()
                    }

            }
                .padding()
                .frame(width: 400, height: 300)
        }
}

struct tSgeet_Previews: PreviewProvider {
    static var previews: some View {
        tSgeet()
    }
}
