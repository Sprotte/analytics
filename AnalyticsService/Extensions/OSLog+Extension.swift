//
//  OSLog+Extension.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import os
import Foundation

extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!
    static let verbose = OSLog(subsystem: subsystem, category: "Verbose")
    static let user = OSLog(subsystem: subsystem, category: "User")
    static let ga = OSLog(subsystem: subsystem, category: "Google Analytics")
    static let ui = OSLog(subsystem: subsystem, category: "UI")
    static let network = OSLog(subsystem: subsystem, category: "Network")
}
