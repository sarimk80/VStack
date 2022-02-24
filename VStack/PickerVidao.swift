//
//  PickerVidao.swift
//  VStack
//
//  Created by sarim khan on 29/01/2022.
//

import SwiftUI


enum Fruits:String,Identifiable,CaseIterable {
    
case Cherry
case Mango
case Apple
case Orange

    var id:Fruits{self}
}

struct PickerVideo: View {
    
    
    @State var fruits:Fruits=Fruits.Apple
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                Picker("Fruits", selection: $fruits) {
                    ForEach(Fruits.allCases){items in
                        Text(items.rawValue.capitalized)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                switch fruits {
                case .Apple:
                    Text("Apple")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .background(Color.black)
                        .cornerRadius(15)
                    
                case .Cherry:
                    Text("Cherry")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .background(Color.black)
                        .cornerRadius(15)
                case .Mango:
                    Text("Mango")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                        .background(Color.black)
                        .cornerRadius(15)
                case .Orange:
                    Text("Orange")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(Color.orange)
                        .background(Color.black)
                        .cornerRadius(15)
               
                }
                Spacer()
            }
            .navigationBarTitle("Picker")
            .navigationBarTitleDisplayMode(.inline)
        }
        
      
    }
}












struct PickerVidao_Previews: PreviewProvider {
    static var previews: some View {
        PickerVideo()
            .previewDevice("iPhone 13 mini")
    }
}
