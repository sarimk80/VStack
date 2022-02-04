//
//  TextFieldView.swift
//  VStack
//
//  Created by sarim khan on 31/01/2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var email:String=""
    @State private var password:String=""
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                Text("Enter email and password to login")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                
                TextField("Email", text: $email, prompt: Text("Email"))
                    .padding([.bottom],16)
                
                SecureField("password", text: $password, prompt: Text("Password"))
                
                
                Spacer()
                
                Button("SignIn"){
                    print("SignIn")
                }
                .frame(maxWidth:.infinity,minHeight: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(16)
                
                Button("SignUp"){
                    print("SignUp")
                }
                .frame(maxWidth:.infinity,minHeight: 50)
                .foregroundColor(.blue)
                .background(Color.white)
                .cornerRadius(16)
                
                
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            .navigationBarTitle("SignIn")
        }
       
    }
    
   
}



struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
            .previewDevice("iPhone 13 mini")
    }
}
