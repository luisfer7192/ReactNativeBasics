//
//  CustomManager.swift
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc (RCTCustomManager)
class RCTCustomManager: NSObject, RCTBridgeModule {
  
  static func moduleName() -> String! {
    return "RCTCustomManager"
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func show(_ title:String, msg:String) {
    DispatchQueue.main.async {
      UIAlertView(title: title, message: msg, delegate: nil, cancelButtonTitle: "OK").show()
    }
  }
  
}
