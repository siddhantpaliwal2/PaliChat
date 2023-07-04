//
//  OnboardingButton.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

struct OnboardingButton: View {
    var text:String;
    var body: some View {
        Button {
            //code
        } label: {
            
            Text(text).font(Font.button).foregroundStyle(Color.background).frame(width: 343, height: 50).background(Color.button_primary)
        }

    }
}

struct OnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButton(text: "Get Started")
    }
}
