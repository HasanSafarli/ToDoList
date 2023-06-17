//
//  ProfileView.swift
//  ToDoList
//
//  Created by Hasan Safarli on 6/13/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info
                VStack (alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Hasan Safarli")
                    }
                    .padding()
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("hsnsfrli@gmail.com")
                    }
                    .padding()
                    HStack {
                        Text("Member since: ")
                            .bold()
                        Text("today")
                    }
                    .padding()
                }
                .padding()
                
                // Sign out
                Button("Log out") {
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                
                Spacer()
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
