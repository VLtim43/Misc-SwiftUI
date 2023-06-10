//
//  ContentView.swift
//  foodfy
//
//  Created by Student22 on 07/06/23.
//
import Foundation
import SwiftUI

struct Recipe : Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let igredients: [String]
    let howToMake: String
    let kcal: Int
}

let foto: String = "https://assets.unileversolutions.com/recipes-v2/54349.jpg"

var Recipes = [
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500),
    Recipe(id: 0, name: "feijoada", description: "guizado de feijão", image: foto, igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500)
    
   
]

extension Color {
    static let lightGrey = Color("lightGrey")
    static let healthyGreen = Color("healthyGreen")
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(){
                LinearGradient(colors: [.lightGrey ,.white],
                               startPoint: .top,
                               endPoint: .center).ignoresSafeArea()
                
                ScrollView (showsIndicators: false) {
                    VStack(alignment: .leading) {
                       
                        Text("Recomendados")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.healthyGreen)
                            .padding(.top, 80)
                        .padding(.leading, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            NavigationLink (destination: Text("p")){
                                ForEach(Recipes) { item in
                                    VStack() {
                                        Image("feijoada")
                                            .resizable()
                                            .frame(width: 160 , height: 180)
                                            
                                        
                                        ZStack() {
                                            Rectangle()
                                                .fill(Color.healthyGreen)
                                                .frame(width: 160 , height: 90)
                                                .padding(.top, -15)
                                            
                                               
                                            
                                            VStack(alignment: .leading){
                                                Text(item.name.capitalized)
                                                    .font(.title).padding(.top, -30)
                                                Text(item.description)
                                            }.foregroundColor(.white)
                                        }
                                        
                                    }
                                    .cornerRadius(8)
                                    .padding(.horizontal, 5)
                                    
                                    
                                    
                                    
                                    
                                    
                                }                                 }
                        }
                        
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
