//
//  pieChart.swift
//  foodfy
//
//  Created by Student22 on 13/06/23.
//

import SwiftUI
import PieChart

struct nutriChart: View {
    let foodItem: Recipe
    var fruits: [(name: String, count: Int, color: Color)] = []
    
    init(foodItem: Recipe) {
        self.foodItem = foodItem
        
        fruits = [
            ("proteina", foodItem.nutrients[0] , .yellow),
            ("gorduras", foodItem.nutrients[1], .green),
            ("carboidratos", foodItem.nutrients[2], .red),
            ("fibra", foodItem.nutrients[3], .purple)
            
        ]
    }
    
    var body: some View {
        VStack(alignment: .leading){
            PieChart(
                values: fruits.map(\.count),
                colors: fruits.map(\.color),
                config: Config(hole: 0.6) // 0~1.0
            ).overlay(Text(String(foodItem.kcal))
                .font(.title))
            
            ForEach(fruits.indices, id: \.self) { index in
                HStack {
                    Rectangle()
                        .foregroundColor(fruits[index].color)
                        .frame(width: 20, height: 20)
                    Text(fruits[index].name.capitalized)
                        .font(.title)
                }
            }
        }
        .padding()
        .padding(.bottom, 130)
    }
}



