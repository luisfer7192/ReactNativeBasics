//
//  CustomViewManager.swift
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc (RCTCustomViewManager)
class RCTCustomViewManager: RCTViewManager {
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func view() -> UIView! {
    let view = CustomView()
    view.backgroundColor = UIColor.orange
    return view
  }
  
}
