//
//  desafio02.swift
//  Aula01Tarde
//
//  Created by StudentBackup01 on 17/05/23.
//

import SwiftUI

struct desafio02: View {
    var body: some View {
        VStack{
            Image("bg").resizable().scaledToFill().padding(.top, 100).padding(.bottom, 50)
           
            ZStack{
                Image("bg").resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                Text("HackaTruck")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue).bold().padding(.bottom, 120)
            }
            
            ZStack{
                Rectangle()
                    .fill(.black)
                    .frame(width: 240, height: 190).scaledToFit().padding(.top, 40)
                HStack{
                    Text("Maker").font(.title)
                        .foregroundColor(Color.yellow)
                    Text("Space").font(.title)
                        .foregroundColor(Color.red)
                    
                }.padding(.bottom,40)
            }
            

        }
    }
}

struct desafio02_Previews: PreviewProvider {
    static var previews: some View {
        desafio02()
    }
}
