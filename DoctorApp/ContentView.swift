//
//  ContentView.swift
//  DoctorApp
//
//  Created by Andrey Lvov on 23.11.2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header()

                Spacer()
                    .frame(height: 32)

                DoctorCard(
                    name:"Dr. Imran Syahir",
                    position: "General Doctor",
                    date: "Sunday, 12 June",
                    time: "11:00 - 12:00",
                    image: "doctorPhoto"
                )

                Spacer()
                    .frame(height: 20)

                SearchBar()

                Spacer()
                    .frame(height: 24)

                HStack(
                    spacing: 13
                ){
                        ThemeButton(theme:"Covid 19", image: "covid")
                        ThemeButton(theme:"Doctor", image: "doctor")
                        ThemeButton(theme:"Medicine", image: "pill")
                        ThemeButton(theme:"Hospital", image: "hospital")
                }

                Spacer()
                    .frame(height: 32)

                VStack(
                    spacing: 16
                ){
                    HStack{
                        Text("Near Doctor")
                        Spacer()
                    }

                    VStack(
                        spacing: 12
                    ){
                        NearDoctorCard(
                            name: "Dr. Joseph Brostito",
                            position: "Dental Specialist",
                            image: "brostito_photo",
                            openTime: "17:00"
                        )

                        NearDoctorCard(
                            name: "Dr. Imran Syahir",
                            position: "General Doctor",
                            image: "doctorPhoto",
                            openTime: "18:00"
                        )
                    }
                }
            }
            .padding()
        }

        HStack(
            spacing: 12
        ){
            Tab(
                title: "Home",
                image: "home",
                active: true
            )
            Tab(
                title: "Calendar",
                image: "calendar",
                active: false
            )
            Tab(
                title: "Message",
                image: "message",
                active: false
            )
            Tab(
                title: "Profile",
                image: "profile",
                active: false
            )
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
    }
}

#Preview {
    ContentView()
}
