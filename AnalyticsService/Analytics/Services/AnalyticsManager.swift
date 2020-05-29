//
//  AnalyticsManager.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import UIKit

final class AnalyticsManager: AnalyticsService {
    
    internal private(set) var services = [AnalyticsService]()
    
    static let instance = AnalyticsManager()
    private init() {}
    
    func add(service: AnalyticsService) {
        self.services.append(service)
    }
 
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        for service in services {
            service.initialize(
                application     : application,
                launchOptions   : launchOptions
            )
        }
    }
    
    func report(event: Event,file: String = #file) {
        for service in services where service.shouldReport(event: event) {
            service.report(event: event,file: file)
        }
    }
}
