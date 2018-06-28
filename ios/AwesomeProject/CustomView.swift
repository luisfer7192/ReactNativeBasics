//
//  CustomView.swift
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation
import UIKit

class CustomView: UIView {
  
  @objc var message: String? {
    didSet {
      self.messageLabel?.text = "Property from JS: \(message!)";
    }
  }
  
  @objc var onIncreaseValue: RCTBubblingEventBlock?
  var messageLabel: UILabel?
  
  convenience init() {
    self.init(frame: CGRect.zero)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.prepareView()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.prepareView()
  }
  
  func prepareView() {
    self.messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 30))
    self.messageLabel?.textColor = UIColor.white;
    self.addSubview(self.messageLabel!)
    
    let button = UIButton(type: .system)
    button.frame = CGRect(x: 0, y: 30, width: 200, height: 30)
    button.setTitle("Native Button calls RN Event", for: .normal)
    button.addTarget(self, action: #selector(CustomView.increaseValue(_:)), for:.touchUpInside)
    button.backgroundColor = UIColor.gray
    button.setTitleColor(UIColor.white, for: .normal)
    
    self.addSubview(button)
  }
  
  @objc func increaseValue(_ sender:UIButton) {
    guard let onIncreaseValue = onIncreaseValue else { return }

    onIncreaseValue([String:Any]())
  }
  
}
