//
//  OnboardingContainerView.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

enum Screens:Int{
    case welcome = 0
    case phonenumber = 1
    case verification = 2
    case profile = 3
    case contacts = 4
}
struct OnboardingContainerView: View {
    @State var screen:Screens = .welcome;
    var body: some View {
        switch screen{
        case .welcome:
            OnboardingWelcome(screen: $screen)
        case .phonenumber:
            OnboardingPhoneNumber()
        case .verification:
            OnboardingVerification()
        case .profile:
            OnboardingCreateProfile()
        case .contacts:
            OnboardingSyncContacts()
        }
    }
}

struct OnboardingContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContainerView(screen: .welcome)
    }
}
