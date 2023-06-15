//
//  recipeStruct.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import Foundation

struct ingrediente : Identifiable {
    let id = UUID()
    let name : String
}


struct Recipe : Codable {
    var _id: String
    var _rev: String
    let name: String
    let description: String
    let image: String
    let tag: [String]
    var ingredients: [String]
    let howToMake: String
    let kcal: Int
    let nutrients: [Int]

    
}

let Ingredientes = [
    ingrediente(name: "feijao"),
    ingrediente(name: "frango"),
    ingrediente(name: "leite"),
]







class ViewModel : ObservableObject {
    @Published var cloudRecipes : [Recipe] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/get/foods" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Recipe].self, from: data)
                
                DispatchQueue.main.async {
                    self?.cloudRecipes = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}



struct global {
    static var favoritas: [Recipe] = []
}
func addReceitaFavorita(rec: Recipe) -> [Recipe] {
    
    global.favoritas.append(Recipe(_id: rec._id, _rev:rec._rev,  name: rec.name, description: rec.description, image: rec.image, tag: rec.tag, ingredients: rec.ingredients, howToMake: rec.howToMake, kcal: rec.kcal, nutrients: rec.nutrients))

    return global.favoritas
}

func removeReceitaFavorita(rec: Recipe, listaFavoritas: [Recipe]) -> [Recipe] {

    var index = -1
    for i in 0..<global.favoritas.count {
        if global.favoritas[i].name == rec.name{
            index = i
        }
    }
    global.favoritas.remove(at: index)
    return global.favoritas
}
