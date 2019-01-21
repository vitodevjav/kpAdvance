//
//  AppDelegate.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: ViewController())
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
        return true
    }
}

