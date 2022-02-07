//
//  ButtonsView.swift
//  VStack
//
//  Created by sarim khan on 07/02/2022.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var firstToggle:Bool=false
    @State private var secondToggle:Bool=false
    
    
    var body: some View {
        VStack {
            Toggle(isOn: $firstToggle) {
                Text("First Toggle : \(firstToggle.description) ")
            }
            .toggleStyle(.switch)
            
            Toggle(isOn: $secondToggle) {
                Text("Seconf Toggle : \(secondToggle.description) ")
            }
            .toggleStyle(.button)
        }
        .padding()
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
