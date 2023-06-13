//
//  recipeStruct.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import Foundation


struct Recipe : Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
    let igredients: [String]
    let howToMake: String
    let kcal: Int
    let nutrients: [Int]
}


var Recipes = [
    Recipe(name: "feijoada", description: "guizado de feijão", image: "https://assets.unileversolutions.com/recipes-v2/54349.jpg", igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500, nutrients: [10,20,30,30]),
        Recipe(name: "macarronese", description: "maionese", image: "https://receitinhas.com.br/wp-content/uploads/2023/01/macarronese-Casa-e-Cozinha-Receitas-730x365.jpg", igredients: ["macarrao","legumes"], howToMake: "como fazer", kcal: 500, nutrients: [10,30,30,10]),
        Recipe(name: "frango assado", description: "guizado de feijão", image: "https://www.kitano.com.br/wp-content/uploads/2019/07/SSP_2480-Frango-assado-com-salsa-e-cebolinha-1.jpg", igredients: ["feijao","carne"], howToMake: "como fazer", kcal: 500, nutrients: [10,0,50,30]),
        Recipe(name: "strogonoff", description: "maionese", image: "https://www.receitasnestle.com.br/sites/default/files/srh_recipes/861d71239103ef70f76554abf688bfc8.jpg", igredients: ["macarrao","legumes"], howToMake: "como fazer", kcal: 500, nutrients: [20,20,20,30])
]
