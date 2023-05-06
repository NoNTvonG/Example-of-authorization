//
//  InputView.swift
//  SwiftUIAuthTutorial
//
//  Created by Roman Pyrih on 06/05/2023.
//

import SwiftUI

struct InputView: View {
    let title: String
    @Binding var text: String
    let placeholder: String
    var isSecureField: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
        
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(title: "Email", text: .constant(""), placeholder: "email@example.com")
    }
}
