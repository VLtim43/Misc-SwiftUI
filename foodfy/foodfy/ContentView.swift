//
//  ContentView.swift
//  foodfy
//
//  Created by Student22 on 07/06/23.
//
import Foundation
import SwiftUI
import PieChart

struct Recipe : Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
    let igredients: [String]
    let howToMake: String
    let kcal: Int
}


var Recipes = [
    Recipe(name: "feijoada", description: "guizado de feijão", image: "https://assets.unileversolutions.com/recipes-v2/54349.jpg", igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(name: "macarronese", description: "maionese", image: "https://receitinhas.com.br/wp-content/uploads/2023/01/macarronese-Casa-e-Cozinha-Receitas-730x365.jpg", igredients: ["macarrao","legumes"], howToMake: "como fazer", kcal: 500),
    Recipe(name: "frango assado", description: "guizado de feijão", image: "https://www.kitano.com.br/wp-content/uploads/2019/07/SSP_2480-Frango-assado-com-salsa-e-cebolinha-1.jpg", igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(name: "strogonoff", description: "maionese", image: "https://www.receitasnestle.com.br/sites/default/files/srh_recipes/861d71239103ef70f76554abf688bfc8.jpg", igredients: ["macarrao","legumes"], howToMake: "como fazer", kcal: 500)
    
]


extension Color {
    static let lightGrey = Color("lightGrey")
    static let healthyGreen = Color("healthyGreen")
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(){
                
                VStack(alignment: .leading) {
                    
                    Text("Recomendados")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.healthyGreen)
                        .padding(.top, 80)
                        .padding(.leading, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes) { item in
                                NavigationLink (destination: Text(item.name)){
                                    
                                    VStack() {
                                        Rectangle()
                                            .fill(Color.healthyGreen)
                                            .frame(width: 210 , height: 40)
                                            .padding(.bottom, -10)
                                            .overlay(Text(item.name.capitalized).font(.system(size: 24).bold()) // Set custom font size here
                                                .foregroundColor(.white).padding(.top, 5))
                                        
                                        ZStack() {
                                            AsyncImage(url: URL(string: item.image)) { image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 210 , height: 200)
                                    
                                        }
                                        Rectangle()
                                            .fill(Color.healthyGreen)
                                            .frame(width: 210 , height: 70)
                                            .padding(.top, -15)
                                            .overlay(Text(item.description.capitalized).font(.system(size: 22))
                                                .foregroundColor(.white).padding(.top, -30))
                                        
                                        
                                    }
                                    .cornerRadius(9)
                                    .padding(.horizontal, 5)
                                    
                                }
                           
                                             
                            }
                            
                        }
                        
                        Spacer()
                    }
                }
               
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
