//
//  LoginView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 06/05/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Image("firebase-icon")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 130)
                .padding(.vertical, 32)
            
            InputView(title: "Email", text: $email, placeholder: "email@example.com")
                .autocapitalization(.none)
            InputView(title: "Password", text: $password, placeholder: "Enter your password", isSecureField: true)
                .autocapitalization(.none)
            
            
            Button {
                print("Login action")
            } label: {
                Text("Login")
            }

            
            Spacer()
            
            // register button
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
