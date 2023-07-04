//
//  AppDelegate.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import Foundation
import UIKit
import FirebaseCore


class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
