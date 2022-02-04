//
//  SheetView.swift
//  VStack
//
//  Created by sarim khan on 01/02/2022.
//

import SwiftUI

struct SheetView: View {
    
    @State private var isOpen:Bool=false
    
    var body: some View {
        VStack {
            Text("Hello,world!")
            
            Button {
                isOpen.toggle()
            } label: {
                Text("Open Sheet")
                    .foregroundColor(.yellow)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
            }

        }
        .sheet(isPresented: $isOpen) {
            
        } content: {
            BottomSheetView(isOpen: $isOpen)
        }


    }
}


struct BottomSheetView:View{
    
    @Binding var isOpen:Bool
    
    var body: some View{
        
        VStack {
            Text("Bottom Sheet")
            
            Button {
                isOpen.toggle()
            } label: {
                Text("Close Sheet")
                    .foregroundColor(.yellow)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
            }
        }
    }
}




struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
            .previewDevice("iPhone 12 mini")
    }
}
