//
//  SearchBar.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var text = ""
    var body: some View {
        HStack(
            spacing: 12
        ){
            Image("searchIcon")
                .resizable()
                .frame(
                    width: 24, height: 24
                )
            TextField(
            "Search doctor or health issue",
            text: $text,
            prompt: Text("Search doctor or health issue")
                .font(.custom("Poppins-Regular", size:15))
                .foregroundColor(Color.Secondary)
            )
            .foregroundColor(Color.Secondary)
        }
        .padding(16)
        .background(Color.Container)
    }
}

#Preview {
    SearchBar()
}
