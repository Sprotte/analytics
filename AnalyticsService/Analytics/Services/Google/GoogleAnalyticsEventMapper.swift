//
//  GoogleAnalyticsEventMapper.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation

class GoogleAnalyticsEventMapper : AnalyticsEventMapper {
    func eventName(for event: Event) -> String {
        switch event {
        case .click:
            return "pressed_button"
        case .clicked(_):
            return "pressed_button_count"
        case .reachedTen:
            return "pressed_button_ten_times"
        default:
            return event.name
        }
    }
    
    func parameterName(for parameter: Event.Parameter) -> String {
        switch parameter {
        case.index:
            return "count"
        }
    }
}
