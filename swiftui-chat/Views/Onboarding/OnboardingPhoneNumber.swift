//
//  OnboardingPhoneNumber.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingPhoneNumber: View {
    @Binding var screen:Screens;
    @State var phonenumber:String = "";
    var body: some View {
        ZStack{
            VStack(alignment: .center ){
                OnboardingTitle(text: "Verification").padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
                OnboardingParagraphs(text: "Enter your mobile number below. We’ll send you a verification code shortly.").multilineTextAlignment(.center).padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                ZStack{
                    OnboardingTextField(preview: "e.g. 1231231234")
                    Image(systemName: "xmark.circle.fill").foregroundColor(Color.icon_primary).padding(EdgeInsets(top: 0, leading: 275, bottom: 0, trailing: 0))
                }
                Spacer();
                Button {
                    if phonenumber.count==10{
                        screen = .verification
                    }
                        
            
                    //code
                } label: {
                    
                    Text("Next").font(Font.button).foregroundStyle(Color.background).frame(width: 343, height: 50).background(Color.button_primary).padding(35)
                }
            }
        }.background(Color.background)
        
    }
}

struct OnboardingPhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPhoneNumber(screen: .constant(.phonenumber))
    }
}
