//
//  Event.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import Foundation

enum Event: Equatable {
    
    case loadView
    case viewDidLoad
    case viewWillAppear
    case viewDidAppear
    case viewWillLayoutSubviews
    case viewDidLayoutSubviews
    case viewWillDisappear
    case viewDidDisappear
    
    case click
    case clicked(index: Int)
    case reachedTen
    
    var name: String {
      get { return String(describing: self) }
    }
}

extension Event {
    enum Parameter: String, Equatable {
        case index
    }
    var parameters: [Parameter: String] {
        switch self {
        case let .clicked(index):
            return [
                .index: String(describing: index)
            ]
        default:
            return [:]
        }
    }
}
