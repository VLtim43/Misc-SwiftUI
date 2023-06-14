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
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.white, .white], startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        Text(foodItem.name.capitalized)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.medium)
                            .foregroundColor(Color.healthyGreen)
                            .padding(.leading, 10)
                        
                        
                        AsyncImage(url: URL(string: foodItem.image)){ image in
                            
                            image
                            
                            
                                .resizable()
                                .frame(width: 400, height: 300)
                                .aspectRatio(contentMode: .fit)
                                .ignoresSafeArea(.all)
                                .border(Color.green, width: 10)

                        } placeholder: {
                        }
                        
                        
                        
                        VStack(alignment: .leading){
                            Button {
                               // foodItem.toggleFavorite()
                            } label: {
                                    Text("Adicionar fav")
                            }
                            
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





