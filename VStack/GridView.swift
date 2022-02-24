//
//  GridView.swift
//  VStack
//
//  Created by sarim khan on 02/02/2022.
//

import SwiftUI

struct GridView: View {
    
    var colums:[GridItem]=[
        
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
       
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums) {
                    
                    ForEach(0..<50){index in
                        
                        NavigationLink {
                            Destination(indes:Int(index.magnitude))
                        } label: {
                            Rectangle()
                                .foregroundColor(.pink)
                                .opacity(0.8)
                                .cornerRadius(10)
                                .frame(height:50)
                        }
                    }
                }.padding()
            }
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Image(systemName: "note")
                }
            })
            
            .navigationBarTitle("Lazy List")
        }
        
        
    }
}


struct Destination:View {
    var indes:Int
    var body: some View{
        Text("Hello \(indes)")
    }
}










struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
