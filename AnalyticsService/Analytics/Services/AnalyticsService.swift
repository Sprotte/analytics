//
//  AnalyticsService.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import UIKit

protocol AnalyticsService {
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    func report(event: Event,file: String)
    var events: [Event] { get }
}

extension AnalyticsService {
    var events: [Event] {
        return []
    }
    
    func shouldReport(event: Event) -> Bool {
        return events.isEmpty || events.contains(event)
    }
    
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey : Any]?) {
    }
}
