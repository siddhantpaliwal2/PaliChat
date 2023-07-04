//
//  OnboardingTitle.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

struct OnboardingTitle: View {
    var text:String;
    var body: some View {
        Text(text).font(Font.customTitle)
    }
}

struct OnboardingTitle_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTitle(text: "Welcome to Pali Chat")
    }
}
