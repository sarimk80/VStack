//
//  Carousel.swift
//  VStack
//
//  Created by sarim khan on 10/02/2022.
//

import SwiftUI

struct Carousel: View {
    
    @State private var index:Int=0
    
    var body: some View {
        VStack{
                  TabView(selection: $index) {
                      ForEach((0..<3), id: \.self) { index in
                          Rectangle()
                              .foregroundColor(.blue)
                              .frame(width: 200, height: 200, alignment: .center)                             
                              .cornerRadius(15)
                      }
                  }
                  .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
              }
        .frame(height: 200)
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}
