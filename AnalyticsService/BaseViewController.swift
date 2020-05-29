//
//  ViewController.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        AnalyticsManager.instance.report(event: .loadView, file: self.typeName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnalyticsManager.instance.report(event: .viewDidLoad, file: self.typeName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AnalyticsManager.instance.report(event: .viewWillAppear, file: self.typeName)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsManager.instance.report(event: .viewDidAppear, file: self.typeName)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        AnalyticsManager.instance.report(event: .viewWillLayoutSubviews, file: self.typeName)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        AnalyticsManager.instance.report(event: .viewDidLayoutSubviews, file: self.typeName)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AnalyticsManager.instance.report(event: .viewWillDisappear, file: self.typeName)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        AnalyticsManager.instance.report(event: .viewDidDisappear, file: self.typeName)
    }
    
}

