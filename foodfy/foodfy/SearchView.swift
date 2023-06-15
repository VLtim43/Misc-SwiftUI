//
//  SearchView.swift
//  foodfy
//
//  Created by Student14 on 12/06/23.
//

import SwiftUI

struct SearchView: View {
    let allRecipes: [Recipe]
    let allIngredients: [ingrediente]
    
    @State private var selectedIngredient = ""
    
    
    @State private var list1 = [Recipe]()
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Ingredients:")
                    .font(.title3)
                    .padding()
                    .fontWeight(.bold)
                
                
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(Ingredientes) { item in
                                
                                Button(item.name) {
                                    selectedIngredient = item.name
                                    
                                    
                                    list1  = filteredRecipes(selected: selectedIngredient)
                                }
                                .padding(9)
                                .background(Color.healthyGreen)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                
                                
                            }
                            
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    Button(){
                        selectedIngredient = ""
                        list1  = filteredRecipes(selected: selectedIngredient)
                    } label: {
                        Text("LIMPAR")
                            .font(.title)
                            .padding(.trailing, 12.0)
                            .foregroundColor(Color.healthyGreen)
                            .bold()
                    }
                    Spacer()
                }
                
                
                
                Divider()
                    .padding(.horizontal)
                
                Text("Recipes:")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding()
                
                ScrollView {
                    ForEach(list1, id:  \._id) { recipe in
                        NavigationLink(destination:detailedView(foodItem: recipe)){
                            VStack() {
                                VStack(alignment: .trailing){
                                    AsyncImage(url: URL(string: recipe.image)) { image in
                                        HStack() {
                                            image
                                                .resizable()
                                                .frame(width: 120)
                                                .clipShape(Circle())
                                            
                                            Spacer()
                                            Text(recipe.name.capitalized).font(.title)
                                                .fontWeight(.medium)
                                                .foregroundColor(.white)
                                            
                                        }
                                        .frame(width: 300, height: 130)
                                        .padding(.horizontal, 20.0)
                                        
                                    }
                                placeholder: {
                                    Image(systemName: "questionmark.app.fill")
                                        .foregroundColor(Color.white)
                                        .padding().font(.system(size: 50))
                                }
                                }
                                .background(Rectangle().fill(.green))
                                .cornerRadius(10)
                                .scaledToFill()
                                
                                
                                Divider()
                                    .padding(.vertical, 2)
                            }
                        }
                    }
                    
                    
                }
                
                
                
                
            }.onAppear(){
                list1  = filteredRecipes(selected: selectedIngredient)
            }
            
        }
    }
    
    func filteredRecipes(selected : String) -> [Recipe] {
        if(selected == ""){
            return allRecipes
        }
        else {
            return allRecipes.filter { recipe in
                recipe.ingredients.contains { $0.self.lowercased() == selected
                }
            }
        }
        
    }
}
