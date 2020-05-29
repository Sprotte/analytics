//
//  LogAnalyticsService.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import os
import UIKit

final class LogAnalyticsService: AnalyticsService {
    
    func report(event: Event, file: String = #file) {
       // os_log("[%@] [%@]", log: .verbose, String(file.split(separator: "/").last ?? ""), event.name)
    }
    
}
