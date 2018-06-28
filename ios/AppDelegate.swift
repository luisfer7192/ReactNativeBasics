//
//  AppDelegate.swift
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var rootView : RCTRootView?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    
    let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
    
    let bridge = RCTBridge(bundleURL: jsCodeLocation, moduleProvider: nil, launchOptions: launchOptions)
    
    #if RCT_DEV
    bridge?.module(for: RCTDevLoadingView.self)
    #endif
    
    self.rootView = RCTRootView(bridge: bridge, moduleName: "AwesomeProject", initialProperties:nil)
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let rootViewController = UIViewController()
    rootViewController.view = self.rootView
    
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    return true
    
  }
  
  
}
