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
    var nutri: [(name: String, count: Int, color: Color)] = []
    
    init(foodItem: Recipe) {
        self.foodItem = foodItem
        
        nutri = [
            ("Carboidratos", foodItem.nutrients[0] , .yellow),
            ("Proteinas", foodItem.nutrients[1], .green),
            ("Gorduras", foodItem.nutrients[2], .red),
            ("Fibras", foodItem.nutrients[3], .purple)
        ]
    }
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            
            Text(foodItem.name.capitalized)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.healthyGreen)
                .padding(.leading, 10)
            
            PieChart(
                values: nutri.map(\.count),
                colors: nutri.map(\.color),
                config: Config(hole: 0.6) 
            )
            
            .overlay(Text("Kcal:" + String(foodItem.kcal))
                .font(.title3))
            
            ForEach(nutri.indices, id: \.self) { index in
                HStack {
                    Rectangle()
                        .foregroundColor(nutri[index].color)
                        .frame(width: 16, height: 16)
                        .cornerRadius(8)
                    Text(nutri[index].name.capitalized)
                        .font(.title3)
                    Text(String(nutri[index].count))
                        .font(.title3)
                }
                .padding(.leading, 10)
            }
        }
        .padding(.bottom, 80)
    }
}



