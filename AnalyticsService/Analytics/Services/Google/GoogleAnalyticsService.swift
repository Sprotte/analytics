//
//  GoogleAnalyticsService.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import os
import UIKit

final class GoogleAnalyticsService: AnalyticsService {
    
    let mapper = GoogleAnalyticsEventMapper()
    
    func report(event: Event, file: String = #file) {
        switch event {
        case .clicked(_),.reachedTen:
            let eventName = mapper.eventName(for: event)
            let parameter = mapper.parameters(for: event)
            os_log("[%@] [%@] [%@]", log: .ga,String(file.split(separator: "/").last ?? ""), eventName, parameter)
        default:
            return
        }
    }
    
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey : Any]?) {
        //init
    }
}


