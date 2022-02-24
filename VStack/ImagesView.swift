//
//  ImagesView.swift
//  VStack
//
//  Created by sarim khan on 07/02/2022.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVStack(alignment:.leading,spacing: 16) {
                    GeometryReader{geomerty in
                        Image("Pakistan")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fill)
                            .frame(width: geomerty.size.width, height: geomerty.size.height, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    .frame(height:350)
                    
                   
                    
                    Text("Attabad Lake")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("The lake was formed when Attabad Village in Hunza Valley in Gilgit−Baltistan had a landslide, 14 kilometres (9 mi) upstream (east) of Karimabad that occurred on 4 January 2010. The landslide killed twenty people and blocked the flow of the Hunza River for five months. The lake flooding has displaced 6,000 people from upstream villages, stranded (from land transportation routes) a further 25,000, and inundated over 19 kilometres (12 mi) of the Karakoram Highway")
                        .font(.body)
                        .fontWeight(.regular)
                }
                .padding()
            }
            .navigationBarTitle("Discover Pakistan")
            .toolbar {
                ToolbarItemGroup{
                    Image(systemName: "magnifyingglass")
                }
                ToolbarItemGroup(placement:.navigationBarLeading){
                    Image(systemName: "line.horizontal.3")
                }
            }
        }
        
        
    }
}















struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
