//
//  ContentView.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text(isAuth ? "Authorization" : "Registration")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(isAuth ? 30 : 60)
            
            VStack {
                TextField("Enter Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Enter Password", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                if !isAuth {
                    SecureField("Repeat Password", text: $confirmPassword)
                        .padding()
                        .background(Color("whiteAlpha"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    if isAuth {
                        print("authorization")
                    } else {
                        print("registration")
                    }
                } label: {
                    Text(isAuth ? "Sign In" : "Create account")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(
                            colors: [Color("yellow"), Color("orange")],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(.black)
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Not with us yet? Sign up!" : "Already have account!")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("orange"))
                }
            }
            .padding()
            .padding(.top, 16)
            .background(Color("whiteAlpha"))
            .cornerRadius(24)
            .padding(isAuth ? 30 : 12)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("background")
                .ignoresSafeArea()
                .blur(radius: isAuth ? 0 : 6)
            )
            .animation(Animation.easeInOut(duration: 0.25), value: isAuth)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
