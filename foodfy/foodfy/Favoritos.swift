//
//  SearchView.swift
//  foodfy
//
//  Created by Student14 on 12/06/23.
//

import SwiftUI


struct favoritos: View {
    @StateObject var viewModel = ViewModel()
    let allRecipes: [Recipe]
    let allIngredients: [ingrediente]
    @State private var selectedIngredient = "fav"
    
    @State private var list1 = [Recipe]()
    
    var body: some View {

        VStack {
            Text("Favortios:")
                .font(.title)
                .fontWeight(.medium)
                .padding()
            
            NavigationStack{
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
            list1  = global.favoritas
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


