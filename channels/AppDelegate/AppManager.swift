//
//  AppManager.swift
//  channels
//
//  Created by Mahmoud Nasser on 3/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import Foundation
import UIKit

class AppManager: NSObject {
    static let shared = AppManager()
    
    var window: UIWindow?
    
    static func launchApp(_ application: UIApplication) {
        if #available(iOS 13, *) {
        } else {
            initWindow()
        }
    }
    
    static func initWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.shared.window = window
    }
    
    @available(iOS 13.0, *)
    static func initSceneWindow(_ windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        let vc = HomeViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.shared.window = window
        LaunchScreenManager.instance.animateAfterLaunch(vc.view)
    }
}
