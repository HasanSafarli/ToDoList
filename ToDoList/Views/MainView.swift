//
//  ContentView.swift
//  ToDoList
//
//  Created by Hasan Safarli on 6/12/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
