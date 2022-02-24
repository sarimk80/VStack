//
//  RootView.swift
//  VStack
//
//  Created by sarim khan on 15/02/2022.
//

import SwiftUI

struct RootView: View {
    
    @State private var selectedTab:Int=0
    
    
   
    
    var body: some View {
                    
            TabView(selection: $selectedTab ) {
                SheetView()
                    .tabItem {
                        Image(systemName: "house")
                            
                    }
                    
                    .tag(0)
                
                GridView()
                     .tabItem {
                         Image(systemName: "creditcard")
                         
                     }
                     .tag(1)
                
               HeaderView()
                     .tabItem {
                         Image(systemName: "newspaper")
                         
                     }
                     .tag(2)
               Animations()
                     .tabItem {
                         Image(systemName: "person.2")
                         
                     }
                     .tag(3)
               PickerVideo()
                     .tabItem {
                         Image(systemName: "square.grid.2x2")
                         
                     }
                     .tag(4)
            }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            RootView()
.previewInterfaceOrientation(.portrait)
               
        }
       
    }
}
