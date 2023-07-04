//
//  OnboardingParagraphs.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/5/23.
//

import SwiftUI

struct OnboardingParagraphs: View {
    var text:String;
    var body: some View {
        Text(text).font(Font.customBody)
    }
}

struct OnboardingParagraphs_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingParagraphs(text: "Simple and fuss-free chat experience")
    }
}
