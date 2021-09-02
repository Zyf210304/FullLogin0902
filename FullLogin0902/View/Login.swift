//
//  SwiftUIView.swift
//  FullLogin0902
//
//  Created by 张亚飞 on 2021/9/2.
//

import SwiftUI
import AuthenticationServices


struct Login: View {
    
    @StateObject var loginData = LoginViewModel()
    
    var body: some View {

        VStack(spacing: 15){
            
            Text("let's start by \ncreating your account")
                .font(.title)
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.top)
                .frame(maxWidth:.infinity, alignment: .leading)
            
            //Custom Text Fields...
            VStack(spacing: 30) {
                
                CustomTextField(hint: "Username", text: $loginData.username)
                CustomTextField(hint: "Email Address", text: $loginData.email)
                CustomTextField(hint: "Phone Number", text: $loginData.phNumber)
                CustomTextField(hint: "About You", text: $loginData.about)
            }
            .padding(.horizontal)
            .padding(.top)
            
            
            HStack(spacing: 12) {
                
                //signUp button...
                Button {
                    
                } label: {
                    
                    Text("SignUp With OTP")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(Color.black)
                        .cornerRadius(22)
                }

                //signUp With Apple Custom Button...
                Image(systemName: "applelogo")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 55, height: 55)
                    .background(Color.black)
                    .cornerRadius(22)
                    //just overlaying singin apple button..
                    //so that will work when tap
                    .overlay {
                        
                        SignInWithAppleButton { onRequest in
                            
                        } onCompletion: { result in
                            
                        }
                        .signInWithAppleButtonStyle(.whiteOutline)
                        .frame(width: 55, height: 55)
                        .opacity(0.02)

                    }
            }
            .padding()
            
            Spacer(minLength: 0)
            
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Save and Continue")
                        .fontWeight(.bold)
                    
                    Text("Skip for Later")
                        .font(.callout)
                        .fontWeight(.light)
                }
                
                Spacer(minLength: 0)
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "arrow.right")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .background(
                        
                            Circle()
                                .fill(Color.yellow)
                                .padding(2)
                                .background(
                                
                                    Circle()
                                        .strokeBorder(.black, lineWidth: 3)
                                )
                        )
                }

            }
            .padding()
            .background(
            
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.purple.opacity(0.6))
                    .padding(2)
                    //black border
                    .background(
                        
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 3)
                    )
                    .ignoresSafeArea(.container, edges: .bottom)
            )
        }
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
