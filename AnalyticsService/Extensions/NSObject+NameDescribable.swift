//
//  NSObject+NameDescribable.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 01.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//
import Foundation

extension NSObject: NameDescribable {}

protocol NameDescribable {
    var typeName: String { get }
    static var typeName: String { get }
}

extension NameDescribable {
    var typeName: String {
        return String(describing: type(of: self))
    }

    static var typeName: String {
        return String(describing: self)
    }
}
