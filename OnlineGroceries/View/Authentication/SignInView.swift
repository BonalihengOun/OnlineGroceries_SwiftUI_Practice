//
//  SignInView.swift
//  OnlineGroceries
//
//  Created by Ounbonaliheng on 17/7/24.
//

import SwiftUI
import iPhoneNumberField
import CountryPicker

struct SignInView: View {
       @State var txtMobile: String = ""
       @State var isShowPicker: Bool = false
       @State var countryObj: Country?
    
       var body: some View {
           ZStack {
               VStack(alignment: .leading) {
                   Image("Mask Group")
                       .resizable()
                       .scaledToFit()
                       .ignoresSafeArea()
                       .padding(.top,30)
                   ScrollView{
                       VStack(alignment: .leading){
                           Text("Get your groceries \nwith nectar")
                               .foregroundColor(.primaryText)
                               .font(.customfont(.semibold, fontSize: 26))
                               .multilineTextAlignment(.leading)
                               .padding(.bottom, 25)
                               .padding(.leading,20)
                           
                           HStack{
                               Button{
                                   isShowPicker = true
                               } label: {
                                   if let countryObj = countryObj{
                                       Text("\(countryObj.isoCode.getFlag())")
                                           .font(.customfont(.medium, fontSize: 35))
                                       Text("+\(countryObj.phoneCode)")
                                           .font(.customfont(.medium, fontSize: 18))
                                           .foregroundColor(.primaryText)
                                   }
                                  
                               }.padding(.leading,25)
                               TextField("Phonenumber",text: $txtMobile)
                                   .frame(minWidth: 0,maxWidth: .infinity)
                                   .keyboardType(.phonePad)
                                   .font(.customfont(.medium, fontSize: 18))
                           }
                           
                           Divider().padding(.horizontal,20)
                               .padding(.top,10)
                       }
                       
                       HStack {
                           Spacer()
                           Text("Or connect with social media")
                               .font(.custom("Niradei-Semibold", size: 14))
                               .foregroundStyle(Color.gray)
                               .padding(.top, 35)
                           Spacer()
                       }
                       
                       VStack {
                           Button(action: {
                               // Add your action here
                           }) {
                               HStack {
                                   Image("Gmail")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 24, height: 24)
                   
                                   Text("Continue with Google")
                                       .foregroundColor(.white)
                                       .font(.customfont(.semibold, fontSize: 16))
                                       .padding(.leading, 10)
                               }
                               .padding(.vertical, 20)
                               .frame(maxWidth: .infinity)
                               .background(Color.Red)
                               .cornerRadius(19)
                           }
                           .padding(.horizontal, 20)
                           .padding(.top, 35)
                           
                           Button(action: {
                               // Add your action here
                           }) {
                               HStack {
                                   Image("Facebook")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 24, height: 24)
                   
                                   Text("Continue with Facebook")
                                       .foregroundColor(.white)
                                       .font(.customfont(.semibold, fontSize: 16))
                                       .padding(.leading, 10)
                               }
                               .padding(.vertical, 20)
                               .frame(maxWidth: .infinity)
                               .background(Color.Blue)
                               .cornerRadius(19)
                           }
                           .padding(.horizontal, 20)
                           .padding(.top, 20)
                       }
                       Spacer()
                   }
                  
               }
           }
           .onAppear{
               self.countryObj = Country(phoneCode: "855", isoCode: "KH")
           }
           .sheet(isPresented: $isShowPicker, content: {
              CountryPicker(country: $countryObj)
           })
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
       }

}


struct SignInView_Preview: PreviewProvider{
    static var previews: some View{
        SignInView()
    }
}
