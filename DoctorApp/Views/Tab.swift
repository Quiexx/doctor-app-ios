//
//  Tab.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct Tab: View {
    var title:String;
    var image:String;
    var active = false;

    
    var body: some View {
        HStack(
            spacing: 8
        ){
            Image(image)
                    .resizable()
                    .frame(
                        width: 24, height: 24
                    )
                    .foregroundColor(active ? Color.OnButton : Color.Secondary)

            Text(active ? title : "")
                    .foregroundColor(active ? Color.OnButton : Color.Primary)
        }
        .padding(12)
        .background(active ? Color.Button : Color.Primary)
        .cornerRadius(12)
    }
}

#Preview {
    Tab(
        title: "Home",
        image: "home",
        active: true
    )
}
