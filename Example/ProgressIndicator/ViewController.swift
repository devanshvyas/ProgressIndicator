//
//  ViewController.swift
//  ProgressIndicator
//
//  Created by zaidSA on 06/06/2019.
//  Copyright (c) 2019 zaidSA. All rights reserved.
//

import UIKit
import ProgressIndicator
class ViewController: ProgressIndicator {

  override func viewDidLoad() {
      super.viewDidLoad()
    indicatorStyle = .gray
    isLoading = true
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

