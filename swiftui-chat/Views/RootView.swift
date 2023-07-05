//
//  ContentView.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI


struct RootView: View {
    @State var selectedTab:tabs = .contacts;
    @State var isOnboarding:Bool = !AuthViewModel.isUserLoggedIn();
    var body: some View {
        VStack {
            Spacer();
            CustomTabBar(selectedTab: $selectedTab);
        }
        .fullScreenCover(isPresented: $isOnboarding, content: {
            OnboardingContainerView(isOnboarding: $isOnboarding)
        })
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
