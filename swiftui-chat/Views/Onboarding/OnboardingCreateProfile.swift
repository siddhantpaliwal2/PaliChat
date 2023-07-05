//
//  OnboardingCreateProfile.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingCreateProfile: View {
    @State var firstname:String = ""
    @State var lastname:String = ""
    @Binding var screen:Screens;
    var body: some View {
        ZStack{
            VStack{
                OnboardingTitle(text: "Setup your Profile").padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
                OnboardingParagraphs(text: "Just a few more details to get started    ").multilineTextAlignment(.center).padding(EdgeInsets(top: 0, leading: 20, bottom: 60, trailing: 20))
                Button(action: {},
                       
                       label:{
                    ZStack{
                        Circle().foregroundColor(Color.button_primary).frame(height:150)
                        Circle().foregroundColor(Color.white).frame(height:146)
                        Image(systemName: "camera.fill").foregroundColor(Color.icon_primary)
                    }
                })
                OnboardingTextField(text_state: firstname, preview: "First Name").padding(EdgeInsets(top: 60, leading: 20, bottom: 20, trailing: 20))
                OnboardingTextField(text_state: lastname, preview: "Last Name").padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                Spacer();
                Button {
                    if (firstname.isEmpty == false) && (lastname.isEmpty == false){
                        screen = .profile
                    }
                    //code
                } label: {
                    
                    Text("Next").font(Font.button).foregroundStyle(Color.background).frame(width: 343, height: 50).background(Color.button_primary).padding(35)
                }
            }
        }.background(Color.background)
    }
}

struct OnboardingCreateProfile_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCreateProfile(screen: .constant(.profile))
    }
}
