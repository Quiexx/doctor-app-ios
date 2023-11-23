//
//  Header.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(
            alignment: .center,
            content: {
                VStack(
                    alignment: .leading, spacing: 6
                ){
                    Text("Hello,")
                        .font(.custom("Poppins-Regular", size:16))
                        .foregroundColor(Color.Secondary)
                    Text("Hi James")
                        .font(.custom("Poppins-Bold", size:20))
                        
                }
                Spacer()
                Image("avatar")
                    .resizable()
                    .frame(
                        width: 56, height: 56
                    )
                    .clipShape(Circle())
            }
        )
    }
}

#Preview {
    Header()
}
