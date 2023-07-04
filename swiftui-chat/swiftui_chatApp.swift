//
//  swiftui_chatApp.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

@main
struct swiftui_chatApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate;
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
