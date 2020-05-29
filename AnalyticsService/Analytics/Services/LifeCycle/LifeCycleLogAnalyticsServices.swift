//
//  LogAnalyticsService.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import UIKit
import os

final class LifeCycleLogAnalyticsService: AnalyticsService {
    
    func report(event: Event, file: String = #file) {
        os_log("[%@] [%@]", log: .ui, file, event.name)
    }
    
    var events: [Event] = [
        .loadView,
        .viewDidLoad,
        .viewWillAppear,
        .viewDidAppear,
        .viewWillLayoutSubviews,
        .viewDidLayoutSubviews,
        .viewWillDisappear,
        .viewDidDisappear
    ]
}
