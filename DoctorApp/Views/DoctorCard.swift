//
//  DoctorCard.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct DoctorCard: View {
    var name:String;
    var position:String;
    var date:String
    var time:String;
    var image:String;

    var body: some View {
        VStack(
            spacing: 16
        ){
            HStack{
                HStack(
                    spacing: 12
                ){
                    Image(image)
                        .resizable()
                        .frame(width: 58, height: 58)
                        .background(Color.Primary)
                        .clipShape(Circle())
                        
                    VStack(
                        alignment: .leading,
                        spacing: 8
                    ){
                        Text(name)
                            .font(.custom("Poppins-Bold", size:16))
                            .foregroundStyle(Color.Primary)
                        Text(position)
                            .font(.custom("Poppins-Regular", size:14))
                            .foregroundStyle(Color.Caption)
                    }
                }
                Spacer()
                Image("rightArrow")
            }

            Divider()
                .background(Color(red: 255, green: 255, blue: 255, opacity: 0.15))

            HStack(
                spacing: 8
            ){
                HStack{
                    Image("calendar")
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundColor(Color.Primary)
                    Text(date)
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundStyle(Color.Primary)
                }

                Spacer()

                HStack(
                    spacing: 8
                ){
                    Image("watch")
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundStyle(Color.Primary)
                    Text(time)
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundStyle(Color.Primary)
                }
            }
        }
        .padding(20)
        .background(
            Color("Surface")
        )
        .cornerRadius(12)
    }
}

#Preview {
    DoctorCard(
        name:"Dr. Imran Syahir",
        position: "General Doctor",
        date: "Sunday, 12 June",
        time: "11:00 - 12:00",
        image: "doctorPhoto"
    )
}
