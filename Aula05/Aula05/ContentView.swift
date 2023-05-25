//
//  ContentView.swift
//  Aula05
//
//  Created by Student22 on 23/05/23.
//

import SwiftUI
import MapKit

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    //let flag: String
    let description: String
}

let LatLong = [
    CLLocationCoordinate2D(latitude: -19.922617577854318, longitude: -43.99257354663494 ),
    CLLocationCoordinate2D(latitude: -19.892058988711803, longitude: -43.80026055576339 ),
    CLLocationCoordinate2D(latitude: -20.361452268879255, longitude: -40.29694012040064 ),
    CLLocationCoordinate2D(latitude: -20.381754688035038, longitude: -40.30774679653599 )
    
]

let Locations = [
    Location(name: "Belo Horizonte", coordinate: LatLong[0], description: "Belo Horizonte"),
    Location(name: "Sabara", coordinate: LatLong[1], description: "Sabara"),
    Location(name: "Vila Velha", coordinate: LatLong[2], description: "Vila Velha"),
    Location(name: "Guarapari", coordinate: LatLong[3], description: "Guarapari")
]

struct ContentView: View {

    @State private var mapRegion =  MKCoordinateRegion(center: LatLong[3], span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
    
    @State public var regionName = Locations[0].name
    
    @State var showingSheet = false
    
    var body: some View {
        VStack {
            Rectangle().foregroundColor(.white).frame(height: 120).overlay(
                VStack {
                    Text("World Map")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 50.0)
                    Text(regionName)
                        .font(.title3)
                    
                })
                    
                Map(coordinateRegion: $mapRegion, annotationItems: Locations) { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        Button("Show Sheet") {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            VStack{
                                Text(location.name)
                            }
                        }
                        Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(Color.red).font(.system(size: 40.0))
                    }
                }
            

            Rectangle().foregroundColor(.white).frame(height: 80).overlay(
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 20) {
                        ForEach(Locations) { location in
                            Button(action: {
                                regionName = location.name
                                mapRegion =  MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
                                   }) {
                                       Text(location.description)
                                           .font(.title3)
                                   }.buttonStyle(.borderedProminent)
                        }
                    }
                }
            )
            
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
