//
//  detailedView.swift
//  foodfy
//
//  Created by Student22 on 12/06/23.
//

import SwiftUI

struct detailedView: View {
    let foodItem: Recipe
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: foodItem.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Color.gray
            }
            .frame(width: 210 , height: 200)
            
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    VStack(alignment: .leading) {
                        Text("Name: \(foodItem.name)")
                        Text("Description: \(foodItem.description)")
                        Text("Ingredients: \(foodItem.igredients.joined(separator: ", "))")
                        Text("How to Make: \(foodItem.howToMake)")
                        Text("Calories: \(foodItem.kcal)")
                    }
                    .padding()
                },
                label: {
                    Text("Details")
                }
            )
            .padding()
            
            Spacer()
        }
    }
}
