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
    @StateObject var viewModel = ViewModel()

    var body: some View {
        TabView{
            HomeView(allRecipes: viewModel.cloudRecipes)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            SearchView(allRecipes: viewModel.cloudRecipes, allIngredients: Ingredientes)
                .navigationBarTitle("Recipe Search")
                .tabItem{
                    Label("Search",systemImage: "magnifyingglass")
                }
            
            favoritos(allRecipes: viewModel.cloudRecipes, allIngredients: Ingredientes)
            
                .tabItem{
                    Label("Favorites", systemImage:  "heart.fill")
                }
            
        }.accentColor(.healthyGreen)
            .onAppear(){
                viewModel.fetch()
                
                
            }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
