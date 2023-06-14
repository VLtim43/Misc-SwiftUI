//
//  ContentView.swift
//  foodfy
//
//  Created by Student22 on 07/06/23.
//
import Foundation
import SwiftUI
import PieChart


extension Color {
    static let lightGrey = Color("lightGrey")
    static let healthyGreen = Color("healthyGreen")
}

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            SearchView(allRecipes: Recipes, allIngredients: Ingredientes)
                .navigationBarTitle("Recipe Search")
                .tabItem{
                    Label("Search",systemImage: "magnifyingglass")
                }
            
            favoritos(allRecipes: Recipes, allIngredients: Ingredientes)
            
                .tabItem{
                    Label("Favorites", systemImage:  "heart.fill")
                }
            
        }.accentColor(.healthyGreen)
        
        
        
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
