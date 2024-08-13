//
//  WelcomeBiew.swift
//  OnlineGroceries
//
//  Created by Ounbonaliheng on 16/7/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
          ZStack(){
              
              Image("people").resizable().scaledToFill().frame(width: 425,height: 896.35)
                  .padding(.leading,5)
                  .padding(.top,40)
              VStack(content: {
                  Image("Carrot").resizable().scaledToFit().frame(width: 48.47,height: 56.36).padding(.top,150)
                  Text(" Welcome \nto our store")
                      .font(.customfont(.semibold, fontSize: 48))
                      .foregroundStyle(Color.white)
                      .multilineTextAlignment(.center)
                  Text("Get your groceries in as fast as one hour").foregroundStyle(Color.white)
                      .font(.customfont(.medium, fontSize: 16))
                      .padding(.top,0.1)
                      .multilineTextAlignment(.center)
                  
                  NavigationLink{
                      SignInView()
                  } label: {
                      RoundButtom(title: "Get Started"){
                        
                      }
                  }
                  
                  
              }).padding(.top,250)
          }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
      }

}

struct WelcomeView_Preview: PreviewProvider{
    static var previews: some View{
        NavigationView{
            WelcomeView()
        }
    }
}
