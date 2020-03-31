//
//  LogOrSin.swift
//  checkin
//
//  Created by Oliver Brady on 3/30/20.
//  Copyright © 2020 Oliver Brady. All rights reserved.
//

import SwiftUI

struct LogOrSin: View {
      var body: some View {
        NavigationView{
            VStack() {
        
            Symbol()
                .frame(width: 300, height: 300)
                .padding(.bottom, 70)
            
              VStack(alignment: .leading, spacing: 15) {
                Button(action: {}) {
                    NavigationLink(destination: Login()){
                      Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        }
                }
                
                Button(action: {}) {
                    NavigationLink(
                    destination: Signup()){
                      Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                    }
                }
                
              }.padding([.leading, .trailing], 27.5)
                
                Spacer()
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(
            LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
              .edgesIgnoringSafeArea(.all))
            
        }
    }
    
}

struct LogOrSin_Previews: PreviewProvider {
    static var previews: some View {
        LogOrSin()
    }
}
