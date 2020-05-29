//
//  LocalUser.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation

struct LocalUser {
    @UserDefault(key: "firstClick", defaultValue: false)
    static var firstClick: Bool
    
    @UserDefault(key: "clicked", defaultValue: 0)
    static var clicked: Int
    
    @UserDefault(key: "reachedTenClicks", defaultValue: false)
    static var reachedTenClicks: Bool
}
