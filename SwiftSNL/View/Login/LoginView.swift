//
//  LoginView.swift
//  SwiftSNL
//
//  Created by Peter on 16/04/2025.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View {
        ZStack{
            
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                      
                    }
                    
                    Spacer()
                }
                
                ScrollView {
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.top, .topInsets)
                    
                    
                    Text("Loging")
                        .foregroundColor(Color.black)
                        .font(.customfont(.semibold, fontSize: 30 ))
                        .padding(.top, 15)
                        .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
                    
                    Text("Enter your Email and Password")
                        .foregroundColor(Color.textTitle)
                        .font(.customfont(.medium, fontSize: 16 ))
                        .frame(minWidth: 0,maxWidth: .screenWidth, alignment: .leading)
                        .padding(.top, 10)
                    
                    LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                        .padding(.bottom, .screenWidth * 0.07)
                        .padding(.top, .screenWidth * 0.07)
                
                    
                    LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                        .padding(.bottom, .screenWidth * 0.02)
                    
                        
                    NavigationLink {
                        ForgetPassword()
                    } label: {
                        Text("Forget Password?")
                            .font(.customfont(.medium, fontSize: 16 ))
                            .foregroundColor(Color.textTitle)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            .padding(.vertical,15)
                    }
                    
                  
                    RoundButton(title: "Login", didTap:{
                        print("Hello")
                    })
                    
                    HStack{
                        Text("Dont have an account?")
                            .foregroundColor(Color.textTitle)
                            .font(.customfont(.semibold, fontSize: 18))
                        
                        NavigationLink {
                            SignUp()
                        } label: {
                            Text("Signup?")
                                .foregroundColor(Color.green)
                                .font(.customfont(.semibold, fontSize: 18))
                        }
                    }
                    .padding(.top,20)
                    
                    Spacer()
                    
                }
                
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
