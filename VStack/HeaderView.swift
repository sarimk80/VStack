//
//  HeaderView.swift
//  VStack
//
//  Created by sarim khan on 03/02/2022.
//

import SwiftUI


struct Devices:Identifiable {
    var id=UUID().uuidString
    var name:String
    var company:String
}

struct HeaderView: View {
    
    var deviceList=[
        Devices(name: "iPad", company: "Apple"),
        Devices(name: "iPod", company: "Apple"),
        Devices(name: "iPhone", company: "Apple"),
        Devices(name: "iMac", company: "Apple"),
        Devices(name: "Galaxy s3", company: "Samsung"),
        Devices(name: "Galaxy s4", company: "Samsung"),
        Devices(name: "Pixel 3", company: "Google"),
        Devices(name: "Pixel 4", company: "Google"),
        Devices(name: "Pixel 2", company: "Google"),
    ]
    
    
    
    var groupDeviceByName:[String:[Devices]] {
        Dictionary(grouping: deviceList) { $0.company }
    }
    
    var returnKey:[String] {
        groupDeviceByName.map { $0.key }
    }
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(returnKey, id: \.self) { deviceCompany in
                    Section {
                        ForEach(self.groupDeviceByName[deviceCompany]!) { devices in
                            Text(devices.name)
                        }
                    } header: {
                        Text(deviceCompany)
                    }

                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Header")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
