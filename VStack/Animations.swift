//
//  Animations.swift
//  VStack
//
//  Created by sarim khan on 03/02/2022.
//

import SwiftUI

struct Animations: View {

@State private var isAnimating:Bool = false


var body: some View {
    NavigationView{
        VStack {
                Rectangle()
                    .frame(width: isAnimating ? 100: 200, height: 150, alignment: .center)
                    .foregroundColor(.pink)
                    .cornerRadius(10)
                    .animation(.easeInOut, value: isAnimating)
                    .padding()
                Rectangle()
                    .frame(width: isAnimating ? 100: 200, height: 150, alignment: .center)
                    .foregroundColor(.pink)
                    .cornerRadius(10)
                    .animation(.spring(), value: isAnimating)
                    .padding()
              
                
            Button(role: .destructive) {
                self.isAnimating.toggle()
            } label: {
                Text("Aimate")
            }
            .buttonStyle(.borderedProminent)
            
                

               
        }
        .navigationTitle("Animation")
        .navigationBarTitleDisplayMode(.inline)
    }
      
    
      
    }
}


struct Animations_Previews: PreviewProvider {
static var previews: some View {
    Animations()
}
}
