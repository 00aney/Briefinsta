//
//  TransitionType.swift
//  Briefinsta
//
//  Created by aney on 2017. 10. 24..
//  Copyright © 2017년 Ted Kim. All rights reserved.
//

import UIKit

enum TransitionType {
  case root(window: UIWindow)
  case push
  case present(from: UIViewController)
}
