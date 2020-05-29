//
//  AnalyticsEventMapper.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation

protocol AnalyticsEventMapper  {
    func eventName(for event: Event) -> String
    func parameterName(for parameter: Event.Parameter) -> String 
}

extension AnalyticsEventMapper {
    func parameters(for event: Event) -> [String: String] {
        var newParameters = [String: String]()
        event.parameters.forEach { key, value in
            let newKey = parameterName(for: key)
            newParameters[newKey] = value
        }
        return newParameters
    }
}
