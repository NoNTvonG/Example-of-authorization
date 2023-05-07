//
//  SettingsRowView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 07/05/2023.
//

import SwiftUI

struct SettingsRowView: View {
    let iconName: String
    let title: String
    let iconBackground: Color
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: iconName)
                .foregroundColor(iconBackground)
                
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(iconName: "gear", title: "Version", iconBackground: Color(.systemGray))
    }
}
