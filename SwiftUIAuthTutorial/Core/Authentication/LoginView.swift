//
//  LoginView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 06/05/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            // Image
            Image("firebase-icon")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 130)
                .padding(.vertical, 32)
            // form
            
            // login button
            
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
