//
//  SettingViewHeader.swift
//  Briefinsta
//
//  Created by aney on 2017. 10. 26..
//  Copyright © 2017년 Ted Kim. All rights reserved.
//

import UIKit

protocol SettingHeaderType {
  func configure(text: String)
}


final class SettingViewHeader: UITableViewCell, SettingHeaderType {
  
  // MARK: Metric
  
  fileprivate struct Metric {
    static let settingLabelLeftRight: CGFloat = 20.0
    
    static let bottomLineLeftRight: CGFloat = 20.0
    static let bottomLineHeight: CGFloat = 1 / UIScreen.main.scale
  }
  
  fileprivate struct Font {
    static let settingLabel = UIFont.systemFont(ofSize: 15)
  }
  
  
  // MARK: Properties
  
  
  // MARK: UI
  
  var settingLabel: UILabel!
  
  var bottomLine: UIView!
  var bottomEndLine: UIView!
  
  
  // MARK: Initializing
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.selectionStyle = .none
    
    self.settingLabel = UILabel()
    self.settingLabel.font = Font.settingLabel
    self.settingLabel.textColor = .bi_textColor
    self.addSubview(self.settingLabel)
    
    self.settingLabel.snp.makeConstraints { make in
      make.left.equalTo(self).offset(Metric.settingLabelLeftRight)
      make.right.equalTo(self).offset(-Metric.settingLabelLeftRight)
      make.centerY.equalTo(self)
    }
    
    self.bottomLine = UIView()
    self.bottomLine.backgroundColor = UIColor.bi_lineColor
    self.bottomLine.isHidden = true
    self.addSubview(bottomLine)
    
    self.bottomLine.snp.makeConstraints { make in
      make.bottom.equalTo(self)
      make.left.equalTo(self).offset(Metric.bottomLineLeftRight)
      make.right.equalTo(self)
      make.height.equalTo(Metric.bottomLineHeight)
    }
    
    self.bottomEndLine = UIView()
    self.bottomEndLine.backgroundColor = UIColor.bi_lineColor
    self.bottomEndLine.isHidden = false
    self.addSubview(bottomEndLine)
    
    self.bottomEndLine.snp.makeConstraints { make in
      make.bottom.left.right.equalTo(self)
      make.height.equalTo(Metric.bottomLineHeight)
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  // MARK: Configuring
  
  func configure(text: String) {
    self.settingLabel.text = text
  }
  
}
