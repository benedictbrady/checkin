//
//  SIgnup.swift
//  checkin
//
//  Created by Oliver Brady on 3/30/20.
//  Copyright © 2020 Oliver Brady. All rights reserved.
//

import SwiftUI

struct Signup: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
     
     var body: some View {
         VStack() {
     
         Symbol()
             .frame(width: 300, height: 300)
             .padding(.bottom, 70)
             
           VStack(alignment: .leading, spacing: 15) {
            
            TextField("Email", text: self.$email)
                .padding()
                .accentColor(Color.red)
                .background(Color.white)
                .cornerRadius(20.0)
             
             TextField("Username", text: self.$username)
               .padding()
                 .background(Color.white)
               .cornerRadius(20.0)
                           
             SecureField("Password", text: self.$password)
               .padding()
                .background(Color.white)
               .cornerRadius(20.0)
            
            SecureField("Confirm Password", text: self.$confirmPassword)
                .padding()
                  .background(Color.white)
                .cornerRadius(20.0)
           }.padding([.leading, .trailing], 27.5)
            
             
           Button(action: {}) {
             Text("Sign Up")
               .font(.headline)
               .foregroundColor(.white)
               .padding()
               .frame(width: 300, height: 50)
               .background(Color.green)
               .cornerRadius(15.0)
           }
             Spacer()
         }
         .background(
         LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
           .edgesIgnoringSafeArea(.all))
         
     }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
