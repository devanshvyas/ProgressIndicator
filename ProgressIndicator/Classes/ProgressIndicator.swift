//
//  ProgressIndicator.swift
//  ONUS
//
//  Created by Devansh Vyas on 28/01/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import UIKit

class ProgressIndicator: UIViewController {
    
    fileprivate var indicator: UIActivityIndicatorView? = nil
    public var isLoading = false {
        didSet {
            if indicator == nil {
                indicator = getActivityMonitor(view: view)
            }
            if isLoading {
                indicator?.startAnimating()
            } else {
                indicator?.stopAnimating()
            }
        }
    }
    
    fileprivate func getActivityMonitor(view:UIView) -> UIActivityIndicatorView {
        let activityMonitor = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityMonitor.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityMonitor.center = view.center
        activityMonitor.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        activityMonitor.center.y -= 64
        activityMonitor.layer.cornerRadius = 6.0
        DispatchQueue.main.async {
            view.addSubview(activityMonitor)
        }
        return activityMonitor
    }
    
}
