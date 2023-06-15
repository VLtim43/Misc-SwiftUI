//
//  recipesList.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import SwiftUI

struct recipesList: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            ZStack() {
                ScrollView() {
                    ForEach(viewModel.cloudRecipes, id:  \._id) { item in
                        NavigationLink (destination: Text(item.name)){
                            HStack() {
                                AsyncImage(url: URL(string: item.image)) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 210 , height: 200)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct recipesList_Previews: PreviewProvider {
        static var previews: some View {
            recipesList()
        }
    }
    
}
