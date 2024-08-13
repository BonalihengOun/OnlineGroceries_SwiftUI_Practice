//
//  LoginView.swift
//  OnlineGroceries
//
//  Created by Ounbonaliheng on 17/7/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View {
        ZStack{
            Image("MarkGroup")
                .resizable().scaledToFit().frame(width: .screenWidth,height: .screenHeight)
            VStack{
                Image("carrot 1").resizable().scaledToFit().frame(width: 50,height: 50)
                Spacer().frame(height: .screenWidth * 0.15)
                
                Text("Loging").font(.customfont(.semibold, fontSize: 26)).foregroundColor(.primaryText)
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    .padding(.bottom,10)
                
                Text("Enter your emails and password").font(.customfont(.regular, fontSize: 16)).foregroundColor(.secondaryText)
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    .padding(.bottom,.screenWidth * 0.1)
                
                LineTextField(title: "Email",placeholder: "Enter your email",txt: $loginVM.txtEmail,keyboardType: .emailAddress).padding(.bottom,.screenWidth * 0.07)
                
                
                LineSecureField(title: "Password",placeholder: "Enter your password",txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword).padding(.bottom,.screenWidth * 0.02)
                
                Button{
                    
                } label: {
                    Text("Forgot Password?").font(.customfont(.medium, fontSize: 14)).foregroundColor(.primaryText)
                }.frame(minWidth: 0,maxWidth: .infinity,alignment: .trailing)
                    .padding(.bottom,.screenWidth * 0.03)
                
                RoundButtom(title: "Log In"){
                    
                }.padding(.bottom,.screenWidth * 0.05)
                
                HStack{
                    Text("Don't have an account?").font(.customfont(.semibold, fontSize: 14)).foregroundColor(.primaryText)
                    Button{
                        
                    } label: {
                        Text("Signup").font(.customfont(.semibold, fontSize: 14)).foregroundColor(.primaryApp)
                    }
                        
                }
                
                Spacer()
            }
            .padding(.top,120)
            .padding(.horizontal,20)
            .padding(.bottom,.bottomInsets)
            
            VStack{
                HStack(){
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("Back")
                            .resizable().scaledToFit().frame(width: 20,height: 20)
                    })
                    Spacer()
                }.padding(.top,.topInsets).padding(.horizontal,20)
                Spacer()
            }
            
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct LoginView_Preview: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
