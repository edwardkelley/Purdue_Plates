//
//  ContentView.swift
//  Purdue_Plates
//
//  Created by Edward Kelley on 10/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Image").resizable().scaledToFit()
                Text("Purdue Plates")
                    .font(.system(size: 25))
                NavigationLink(destination: LoginView()) {
                    Text("Log in")
                        .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                
            }
            .padding()
        }
    }
}

struct LoginView: View {
    @State
    var username: String = ""
    @State
    var password: String = ""
    
    var body: some View {
        VStack {
            Text("Username:")
                .font(.system(size: 25))
            TextField("Username", text: $username)
            Text("Password:")
                .font(.system(size: 25))
            TextField("Password", text: $password)
            
            Button(action: {
                if (Login().login(username: username, password: password)) {
                    print("Welcome back \(username)")
                } else {
                    print("Your username or password is incorrect")
                }
                        }) {
                            Text("Log In")
                                .padding()
                                .font(.body)
                                .foregroundColor(.white)
                                .background(Color.blue)
                        }
            Button(action: {
                Login().signUp(username: username, password: password)
                        }) {
                            Text("Sign Up")
                                .padding()
                                .font(.body)
                                .foregroundColor(.white)
                                .background(Color.blue)
                        }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
