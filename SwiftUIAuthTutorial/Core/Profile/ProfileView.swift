//
//  ProfileView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 07/05/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section{
                HStack(spacing: 10) {
                    Text("LP")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 64, height: 64)
                        .background(Color(.systemGray3))
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Liliia Prots")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("lilyuska@gmail.com")
                            .font(.footnote)
                            .accentColor(.black)
                    }
                }
            }
            
            Section("General") {
                HStack{
                    SettingsRowView(iconName: "gear", title: "Version", iconBackground: Color(.systemGray))
                    Spacer()
                    Text("1.0.0")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            Section("Account") {
                Button {
                    print("Log out")
                } label: {
                    SettingsRowView(iconName: "arrow.left.circle.fill", title: "Sign out", iconBackground: Color(.systemRed))
                }
                Button {
                    print("Delete account")
                } label: {
                    SettingsRowView(iconName: "multiply.circle.fill", title: "Delete account", iconBackground: Color(.systemRed))
                }

            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
