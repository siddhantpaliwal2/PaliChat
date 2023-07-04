//
//  OnboardingVerification.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingVerification: View {
    @Binding var screen:Screens;

    var body: some View {
        ZStack{
            VStack(alignment: .center ){
                OnboardingTitle(text: "Verification").padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
                OnboardingParagraphs(text: "Enter the 4-digit verification code we sent to your device.    ").multilineTextAlignment(.center).padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 20))
                Spacer();
                Button {
                    screen = .profile
                    //code
                } label: {
                    
                    Text("Next").font(Font.button).foregroundStyle(Color.background).frame(width: 343, height: 50).background(Color.button_primary).padding(35)
                }
            }
        }.background(Color.background)
    }
}

struct OnboardingVerification_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVerification(screen: .constant(.verification))
    }
}
