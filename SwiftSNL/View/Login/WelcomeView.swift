//
//  WelcomeView.swift
//  SwiftSNL
//
//  Created by Peter on 11/04/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        
            VStack {

                Spacer()
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text( "Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                
                Text("Ger your groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.8))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
               
                NavigationLink {
                      SignInView()
                  } label: {
                      RoundButton(title: "Get Started",
                             textColor: .white
                          )
                  }
                  .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                  .background( Color.primaryApp)
                  .cornerRadius(20)
                
                  Spacer()
                  .frame(height: 80)
                
            }
            .padding(.horizontal , 20)
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            WelcomeView()
        }
    }
}
