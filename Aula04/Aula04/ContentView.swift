//
//  ContentView.swift
//  Aula04
//
//  Created by Student22 on 22/05/23.
//
import Foundation
import SwiftUI


struct Song : Identifiable {
    let id: Int
    let name: String
    let artist: String
}

struct songView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World B")
                
            }.navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}


let Songs = [
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0"),
    Song(id: 0, name: "Test 0", artist: "Fulano 0")
]

let coverDefault: String = "https://cdns-images.dzcdn.net/images/cover/d3641ac36fd3d4680591a3643e9df43c/264x264.jpg"



struct ContentView: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack(){
                LinearGradient(colors: [.blue, .black],
                               startPoint: .top,
                               endPoint: .center).ignoresSafeArea()
                
                ScrollView (showsIndicators: false) {
                    VStack() {
                        Spacer()
                            .padding(.bottom, 40.0)
                        AsyncImage(url: URL(string: coverDefault)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 220, height: 220)
                        
                        
                        VStack() {
                            Text("HackaFM").font(.largeTitle).foregroundColor(Color.white).padding([.top, .leading], 15.0)
                            HStack(){
                                Image(systemName: "person.crop.square.fill")
                                    .foregroundColor(Color.white)
                                Text("Hackasong")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                            
                            NavigationLink (destination: Text("p")){
                                ScrollView(.vertical) {
                                    ForEach(Songs) { item in
                                        VStack {
                                            HStack {
                                                AsyncImage(url: URL(string: coverDefault)) { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                    
                                                } placeholder: {
                                                    Image(systemName: "questionmark.app.fill")
                                                        .foregroundColor(Color.white)
                                                        .padding().font(.system(size: 50))
                                                }
                                                
                                                
                                                .frame(width: 55, height: 55).padding(.leading, 15.0)
                                                
                                                VStack {
                                                    Text(item.name).padding(.leading,-15)
                                                    Text(item.artist).padding(.leading,5)
                                                }
                                                
                                                Spacer()
                                                Image(systemName: "ellipsis")
                                                    .foregroundColor(Color.white)
                                                    .padding().font(.system(size: 20))
                                                
                                            }
                                            .padding(.bottom, 10.0)
                                        }
                                        .foregroundColor(Color.white)
                                }


                                
                            }
                            
                            
                          
                            
                            
                            
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        Text("Sugestions").font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -5.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                
                                ForEach(Songs) { song in
                                    VStack {
                                        AsyncImage(url: URL(string: coverDefault)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            Image(systemName: "questionmark.app.fill")
                                                .foregroundColor(Color.white)        .padding().font(.system(size: 50))
                                        }
                                        .frame(width: 180, height: 180).padding(.leading, 15.0)
                                        Text(song.name)
                                            .foregroundColor(Color.white)
                                    }
                                }
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
}
