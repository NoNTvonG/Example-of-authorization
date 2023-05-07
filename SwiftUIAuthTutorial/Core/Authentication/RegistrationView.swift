//
//  RegistrationView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 06/05/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var fullName: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Image("firebase-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 130)
                .padding(.vertical, 32)
            
            VStack(spacing: 24){
                InputView(
                    title: "Email",
                    text: $email,
                    placeholder: "email@example.com")
                    .autocapitalization(.none)
                InputView(
                    title: "Full name",
                    text: $fullName,
                    placeholder: "Enter your name")
                InputView(
                    title: "Password",
                    text: $password,
                    placeholder: "Enter your password",
                    isSecureField: true)
                    .autocapitalization(.none)
                InputView(
                    title: "Confirm password",
                    text: $confirmPassword,
                    placeholder: "Confirm your password",
                    isSecureField: true)
                    .autocapitalization(.none)
            }
            .padding(.horizontal)
            
            Button {
                print("Register action")
            } label: {
                HStack{
                    Text("Sign up")
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(Color(.white))
                .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 32)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("A have account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
