//
//  ContentView.swift
//  ToDoList_SwiftUI
//
//  Created by Александр Полочанин on 2.08.23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIN, !viewModel.currentUserId.isEmpty {
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
