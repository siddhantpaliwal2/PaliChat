//
//  OnboardingTextField.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingTextField: View {
    @State var text_state:String = "";
    var preview:String;
    var body: some View {
        ZStack{
            TextField(" " + preview, text: $text_state).font(Font.customBody).padding(20).frame(width:335, height:56).background(Color.white)
        }
    }
}

struct OnboardingTextField_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTextField( preview: "123456")
    }
}
