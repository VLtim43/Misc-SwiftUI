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
struct Recipe : Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
    var ingredients: [String]
    let howToMake: String
    let kcal: Int
    let nutrients: [Int]
    
    mutating func toggleFavorite() {
            if let favIndex = ingredients.firstIndex(of: "fav") {
                ingredients.remove(at: favIndex)
            } else {
                ingredients.append("fav")
            }
        }
    
}

let Ingredientes = [
    ingrediente(name: "feijao"),
    ingrediente(name: "frango"),
    ingrediente(name: "leite"),
]


var Recipes = [
    Recipe(name: "feijoada", description: "guizado de feijão", image: "https://assets.unileversolutions.com/recipes-v2/54349.jpg", ingredients: ["feijao","carne"], howToMake: "\n 1.Coloque as carnes de molho por 36 horas ou mais, vá trocando a àgua várias vezes,se for ambiente quente ou verão,coloque gelo por cima ou em camadas frias. \n  2.Coloque para cozinhar passo a passo: as carnes duras,em seguida as cares moles. \n 3.Quando estiver mole coloque o feijão, e retire as carnes. \n 4.Finalmente tempere o feijão. \n 5.Acompanhamentos: Couve; Arroz branco;Laranja;Bistecas;Farofa;Quibebe de abóbora; Baião de dois; Bacon;Torresmo e Linguiça.", kcal: 500, nutrients: [10,20,30,30]),
        Recipe(name: "macarronese", description: "maionese", image: "https://receitinhas.com.br/wp-content/uploads/2023/01/macarronese-Casa-e-Cozinha-Receitas-730x365.jpg", ingredients: ["macarrao","legumes"], howToMake: "\n 1.Cozinhe o macarrão como de costume. \n 2.E reserve. \n 3.Lave as uvas passas, a azeitona, a salsinha, a cebolinha, o milho, a ervilha e deixe secar. \n 4.Corte o presunto e a mussarela da forma que achar melhor. \n 5.A Linguiça corte em pedaços para fritar. \n 6.Se preferir tire a pele. \n 7.Depois de tudo pronto, misture todos os ingredientes no macarrão. \n 8.Acrescente a maionese na quantidade de sua preferência e sal a gosto.", kcal: 500, nutrients: [10,30,30,10]),
        Recipe(name: "frango assado", description: "guizado de feijão", image: "https://www.kitano.com.br/wp-content/uploads/2019/07/SSP_2480-Frango-assado-com-salsa-e-cebolinha-1.jpg", ingredients: ["feijao","carne"], howToMake: "\n 1.Em uma tigela média, coloque os pedaços de frango e tempere com o suco de limão, o alho, o Tempero SAZÓN® e o sal. Deixe tomar gosto, na geladeira, de um dia para outro. \n 2.Transfira para um saco próprio para assar, disponha em uma assadeira e leve ao forno médio (180 graus), preaquecido, por 40 minutos. \n 3.Retire do forno, faça um corte na parte superior do saco, com cuidado, e volte ao forno médio (180 graus), preaquecido, por mais 10 minutos, ou até dourar a superfície.\n 4.Retire do forno e sirva em seguida.", kcal: 500, nutrients: [10,0,50,30]),
        Recipe(name: "strogonoff", description: "maionese", image: "https://www.receitasnestle.com.br/sites/default/files/srh_recipes/861d71239103ef70f76554abf688bfc8.jpg", ingredients: ["macarrao","legumes"], howToMake: "\n 1.Em uma panela média, coloque o óleo e leve ao fogo alto para aquecer. Junte a cebola e refogue rapidamente até dourar. \n  2.Acrescente o frango e o sachê do Caldo em Pó KNORR Galinha, e frite bem até dourar. \n 3.Adicione o molho inglês, o ketchup HELLMANN´S, a polpa de tomate e o creme de leite, e deixe cozinhar por 5 minutos, ou até encorpar. \n 4.Retire do fogo e sirva em seguida com arroz e batata.", kcal: 500, nutrients: [20,20,20,30])
]
