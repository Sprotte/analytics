//
//  LocalUserAnalyticsService.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation
import os

final class LocalUserAnalyticsService: AnalyticsService {
    
    func report(event: Event, file: String = #file) {
        switch event {
        case let .clicked(index):
            LocalUser.clicked = index
        case .reachedTen:
            LocalUser.reachedTenClicks = true
        default:
            return
        }
        os_log("[%@] [%@]", log: .user,String(file.split(separator: "/").last ?? ""), event.name)
    }
    
}
