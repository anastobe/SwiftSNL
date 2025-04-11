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
        
            
        }
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
