//
//  detailedView.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import SwiftUI
import SwiftUI
import Foundation

struct SheetView: View {
    var howto: String
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Como Fazer \(howto)")
            .padding()
        Button("Voltar") {
            dismiss()
        }
        .font(.title3)
    }
}

struct detailedView: View {
    
    var foodItem: Recipe
    @State private var isExpanded = false
    @State private var showingSheet = false
    @State var isPlaying : Bool = false
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.white, .white], startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        HStack {
                            
                            
                            
                            Text(foodItem.name.capitalized)
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.green)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.medium)
                                .foregroundColor(Color.healthyGreen)
                                .padding(.leading, 10)
                            
                            
                            Button(action: {
                                if(!global.favoritas.contains(where: { $0.name == foodItem.name })){
                                    global.favoritas = addReceitaFavorita(rec: foodItem)
                                    isPlaying = true
                                    self.isPlaying.toggle()
                                }else{
                                    global.favoritas = removeReceitaFavorita(rec: foodItem, listaFavoritas: global.favoritas)
                                    isPlaying = false
                                    self.isPlaying.toggle()
                                }
                                self.isPlaying.toggle()
                            }) {
                                Image(systemName: self.isPlaying == true ? "heart.fill" : "heart")
                                    .resizable()
                                    
                                    .frame(width: 20, height: 20)
                            }.padding(.trailing, 10)
                            
                            
                        }
                        
                        
                        
                        AsyncImage(url: URL(string: foodItem.image)){ image in
                            
                            image
                            
                            
                                .resizable()
                                .frame(width: 380, height: 280)
                                .aspectRatio(contentMode: .fit)
                                .ignoresSafeArea(.all)
                                .border(Color.green, width: 10)
                            
                        } placeholder: {
                        }
                        
                        
                        
                        VStack(alignment: .leading){
                            DisclosureGroup(
                                isExpanded: $isExpanded,
                                content: {
                                    VStack(alignment: .leading){
                                        Text("Ingredientes: \(foodItem.ingredients.joined(separator: ", "))")
                                        Text("Descrição: \(foodItem.description)")
                                        
                                        
                                    }
                                    .frame(width: 300, height:15 )
                                    .font(.title3)
                                    .padding()
                                    
                                },
                                label: {
                                    Text("Descricao")
                                        .font(.title2)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.green)
                                        .multilineTextAlignment(.leading)
                                        .ignoresSafeArea()
                                        .frame(width: 100)
                                }
                                
                            )
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Button{
                                    showingSheet.toggle()
                                }
                            label: {
                                Text("Como Fazer ")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color.green)
                                    .ignoresSafeArea()
                            }
                            .sheet(isPresented: $showingSheet) {
                                SheetView(howto: foodItem.howToMake)
                            }
                                
                            }
                            Spacer()
                                .frame(height: 10)
                            NavigationLink(destination: nutriChart(foodItem: foodItem)){
                                Text("Informacao nutricional")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.green)
                                    .ignoresSafeArea()
                            }
                            Spacer()
                        }.padding()
                        
                        
                        
                        
                        
                    }
                }
                
            }
            
        }
        
    }
}





