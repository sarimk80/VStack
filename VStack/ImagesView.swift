//
//  ImagesView.swift
//  VStack
//
//  Created by sarim khan on 07/02/2022.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        VStack {
            Image("Travel")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height * 0.3, alignment: .center)
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
       
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
