//
//  SignInView.swift
//  SwiftSNL
//
//  Created by Peter on 14/04/2025.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var txtMobile: String = ""
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    var body: some View {
        
        ZStack{
            
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("sign_in_top")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenWidth)
                
                Spacer()
            }
            
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    
                    Text( "Get your groceries\nwith nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom , 25)
                    
                    HStack{
                        Button{
                            isShowPicker = true
                            
                        }label: {
//                            Image("")

                            if let countryObj = countryObj{
                                
                                Text("\(countryObj.isoCode.getFlag())")
                              .font(.customfont(.medium, fontSize: 35))

                                
                               Text("+\(countryObj.phoneCode)")
                              .font(.customfont(.medium, fontSize: 18))
                              .foregroundColor(.primaryText)
                            }
                            
                        }
                        
                        
                        TextField("Enter Mobile", text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    Divider()
                        .padding(.horizontal, 25)
                    
                    HStack {
                        Spacer()
                        Text("Or connect with social media")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.textTitle)
                            .padding(.vertical, 15)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    
                    NavigationLink {
                        LoginView()
                    } label: {
                        
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 10)
                    
                    Button {

                    } label: {
                        
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .cornerRadius(20)
                    
                    
                    
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth * 1)
            }
        }
        .onAppear{
            self.countryObj = Country(phoneCode: "91", isoCode:"IN")
        }
        .sheet(isPresented: $isShowPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}



struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

