//
//  ListActionView.swift
//  VStack
//
//  Created by sarim khan on 08/02/2022.
//

import SwiftUI

struct ListActionView: View {
    
    var listItems:[String] = ["Item1","Item2","Item3","Item4","Item5"]
    
    
    var body: some View {
        List{
            ForEach(listItems, id: \.self) {
                Text($0)
                    .swipeActions {
                        Button(role:.none ) {
                            print("Edit")
                        } label: {
                            Image(systemName: "pencil")
                        }

                    }
                    .tint(.blue)
                    .swipeActions(edge:.leading) {
                        Button(role:.destructive ) {
                            print("Delete")
                        } label: {
                            Image(systemName: "house.fill")
                        }

                    }
                    .tint(.yellow)
            }
        }
    }
}









struct ListActionView_Previews: PreviewProvider {
    static var previews: some View {
        ListActionView()
    }
}
