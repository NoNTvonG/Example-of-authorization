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
        NavigationStack {
            VStack{
                Image("firebase-icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 130)
                    .padding(.vertical, 32)
                
                VStack(spacing: 24){
                    InputView(title: "Email", text: $email, placeholder: "email@example.com")
                        .autocapitalization(.none)
                    InputView(title: "Password", text: $password, placeholder: "Enter your password", isSecureField: true)
                        .autocapitalization(.none)
                }
                .padding(.horizontal)
                .padding(.top, 16)
                
                Button {
                    print("Login action")
                } label: {
                    HStack{
                        Text("Sign in")
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(Color(.white))
                    .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 32)

                
                Spacer()
                NavigationLink {
                    RegistrationView()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
