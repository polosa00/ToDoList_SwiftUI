//
//  RegisterView.swift
//  ToDoList_SwiftUI
//
//  Created by Александр Полочанин on 3.08.23.
//

import SwiftUI

struct RegisterView: View {
   
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing tods",
                       angle: -15,
                       background: .orange
            )
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    viewModel.register()
                }

            }
            .offset(y: -50)
            Spacer()
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
