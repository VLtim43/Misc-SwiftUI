//
//  recipesList.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import SwiftUI

struct recipesList: View {
    var body: some View {
        NavigationStack {
            ZStack() {
                ScrollView() {
                    ForEach(Recipes) { item in
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
