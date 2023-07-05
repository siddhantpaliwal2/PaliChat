//
//  OnboardingSyncContacts.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingSyncContacts: View {
    @Binding var isOnboarding:Bool;
    var body: some View {
        ZStack{
            VStack(){
                Spacer();
                Image("onboarding-all-set").padding(30)
                
                OnboardingTitle(text:"Welcome to PaliChat").padding(5)
                OnboardingParagraphs(text: "A simple chatting experience created by Siddhant Paliwal").multilineTextAlignment(.center)
                Spacer();
                Button {
                    isOnboarding = false;
                    //code
                } label: {
                    
                    Text("Get Started").font(Font.button).foregroundStyle(Color.background).frame(width: 343, height: 50).background(Color.button_primary)
                }
                
                Text("By tapping ‘Get Started’, you agree to our Privacy Policy.").font(Font.customCaption).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
            }
        }.background(Color.background)
    }
}

struct OnboardingSyncContacts_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSyncContacts(isOnboarding: .constant(true))
    }
}
