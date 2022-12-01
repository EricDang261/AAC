//
//  FormView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/22/22.
//

import SwiftUI

class FormModelView: ObservableObject {
    @State var firstname = "";
    @State var lastname = "";
    @State var birthdate = Date()
    @State var password = "";
    @State var passwordAgain = "";
    @State var streetAddress = "";
    @State var city = "";
    @State var state = "";
    @State var postalCode = "";
    @State var country = "";
}

struct FormView: View {
    @StateObject var viewModel = FormModelView()
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section{
                        TextField("First Name" , text: $viewModel.firstname)
                        TextField("Last Name", text: $viewModel.lastname)
                        DatePicker("Birthdate", selection: $viewModel.birthdate, displayedComponents: .date)
                    }
                    
                    Section(footer: Text("Your password need to have 8 character long.")){
                        SecureField("Password", text: $viewModel.password)
                        SecureField("Confirm Password", text: $viewModel.passwordAgain)
                        
                    }
                    
                    Section(header: Text("Your address")){
                        TextField("Your street address", text: $viewModel.streetAddress)
                        TextField("City", text: $viewModel.city)
                        TextField("State", text: $viewModel.state)
                        TextField("Postal Code", text: $viewModel.postalCode)
                        TextField("Country", text: $viewModel.country)
                        
                    }
                }
                
                NavigationLink(destination: ProfileView(),isActive: $isShowingDetailView){
                    Button(action:{
                        isShowingDetailView = true
                    }, label: {
                        Text("Save")
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                }
            }
            .navigationTitle("Create Account")
        }
        .navigationViewStyle(.stack)
    
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
