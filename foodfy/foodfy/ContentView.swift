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
    var body: some View {
        NavigationStack {
            ZStack(){
                
                VStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.healthyGreen)
                        .ignoresSafeArea()
                        .frame(height: 10)
                    
                    
                    Text("Recomendados")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.healthyGreen)
                        .padding(.top, 50)
                        .padding(.leading, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes) { item in
                                NavigationLink(destination: nutriChart(foodItem: item)) {
                                    
                                    VStack() {
                                        Rectangle()
                                            .fill(Color.healthyGreen)
                                            .frame(width: 210 , height: 40)
                                            .padding(.bottom, -10)
                                            .overlay(Text(item.name.capitalized).font(.system(size: 24).bold()) // Set custom font size here
                                                .foregroundColor(.white).padding(.top, 5))
                                        
                                        ZStack() {
                                            AsyncImage(url: URL(string: item.image)) { image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 210 , height: 200)
                                            
                                            
                                        }
                                        Rectangle()
                                            .fill(Color.healthyGreen)
                                            .frame(width: 210 , height: 70)
                                            .padding(.top, -15)
                                            .overlay(Text(item.description.capitalized).font(.system(size: 22))
                                                .foregroundColor(.white).padding(.top, -30))
                                        
                                        
                                    }
                                    .cornerRadius(9)
                                    .padding(.horizontal, 5)
                                    
                                }
                                
                                
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                        
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
