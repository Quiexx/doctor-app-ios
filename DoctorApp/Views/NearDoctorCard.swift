//
//  NearDoctorCard.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI

struct NearDoctorCard: View {
    var name:String;
    var position:String;
    var image:String;
    var openTime:String

    var body: some View {
        VStack(
            spacing: 20
        ){
            HStack() {
                HStack(
                    spacing: 10
                ){
                    Image(image)
                        .resizable()
                        .frame(width: 58, height: 58)
                        .clipShape(Circle())
                    
                    VStack(
                        alignment: .leading,
                        spacing: 8
                    ){
                            Text(name)
                                .font(.custom("Poppins-Bold", size:16))
                            Text(position)
                                .font(.custom("Poppins-Regular", size:14))
                                .foregroundColor(Color.Secondary)
                    }
                }
                

                Spacer()

                HStack{
                    Image("location")
                    Text("1.2 KM")
                        .font(.custom("Poppins-Regular", size:14))
                        .foregroundColor(Color.Secondary)
                }
            }

            Divider()

            HStack(
                spacing: 12
            ){
                HStack(
                    spacing: 6
                ){
                    Image("watch")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Attention)
                    Text("4.8 (120 Reviews)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Attention)
                }

                Spacer()

                HStack(
                    spacing: 6
                ){
                    Image("watch")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Surface)
                    Text("Open at \(openTime)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Surface)
                }

                Spacer()
            }
            
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(Color.Primary)
    }
}

#Preview {
    NearDoctorCard(
        name: "Dr. Joseph Brostito",
        position: "Dental Specialist",
        image: "brostito_photo",
        openTime: "17:00"
    )
}
