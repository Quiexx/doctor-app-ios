//
//  ThemeButton.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct ThemeButton: View {
    var theme:String
    var image:String
    
    
    var body: some View {
        VStack(
            spacing: 8
        ){
            Image(image)
                .resizable()
                .frame(
                    width: 24, height: 24
                )
                .padding(24)
                .background(Color.Container)
                .clipShape(Circle())
            Text(theme)
                .font(.custom("Poppins-Regular", size:15))
                .foregroundColor(Color.Secondary)
        }
    }
}

#Preview {
    ThemeButton(
        theme:"Covid 19",
        image: "covid"
    )
}
