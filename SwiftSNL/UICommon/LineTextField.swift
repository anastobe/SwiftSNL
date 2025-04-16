//
//  LineTextField.swift
//  SwiftSNL
//
//  Created by Peter on 16/04/2025.
//

import SwiftUI

struct LineTextField: View {
        
    @State var title: String = "Title"
    @State var placholder: String = "Placholder"
    @Binding var txt: String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        
        VStack{
            Text(title)
                .font(.customfont(.medium, fontSize: 18))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
             
            TextField("placeholder", text: $txt)
                .keyboardType(keyboardType)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(height: 40)
            
            Divider()
        }
    }
}


struct LineSecureField: View {
        
    @State var title: String = "Title"
    @State var placholder: String = "Placholder"
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    
    var body: some View {
        
        VStack{
            Text(title)
                .font(.customfont(.medium, fontSize: 18))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if (isShowPassword) {
                TextField(placholder, text: $txt)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .modifier( ShowButton(isShow: $isShowPassword))
                    
                    .frame(height:40)
            }else{
                SecureField(placholder, text: $txt)
                    .autocapitalization(.none)
                     .modifier( ShowButton(isShow: $isShowPassword))
                     .frame(height:40)
                
            }
            Divider()
        }
    }
}

struct LineTextField_Previews: PreviewProvider {
    @State static  var txt: String = ""
    static var previews: some View {
        LineTextField(txt: $txt)
            .padding(20)
    }
}
