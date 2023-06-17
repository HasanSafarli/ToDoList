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
                
                // Info
                VStack (alignment: .leading) {
                    HStack {
                        Text("Name: ")
                        Text("Hasan Safarli")
                    }
                    HStack {
                        Text("Email: ")
                        Text("hsnsfrli@gmail.com")
                    }
                    HStack {
                        Text("Member since: ")
                        Text("today")
                    }
                }
                
                // Sign out
                TLButton(title: "Log out", background: .red) {
                    viewModel.logOut()
                }
                
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
