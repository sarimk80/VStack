//
//  ContentView.swift
//  VStack
//
//  Created by sarim khan on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            TabView{
                Text("First Page")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Text("Second Page")
                    .tabItem {
                        Image(systemName: "ellipsis")
                        Text("More")
                    }
                Text("Third Page")
                    .tabItem {
                        Image(systemName: "paperplane")
                        Text("messages")
                    }
            }
           
            .navigationTitle("Tab View")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "flame")
                    Text("Edit")
                }
            }
        }
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
