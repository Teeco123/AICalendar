//
//  DateFormatter.swift
//  AICalendar
//
//  Created by Kacper on 02/02/2025.
//

import SwiftUI

extension Date {
    static func from(_ dateString: String) -> Date {
        let strategy = Date.ParseStrategy(
            format: "\(year: .defaultDigits)-\(month: .twoDigits)-\(day: .twoDigits) \(hour: .twoDigits(clock: .twentyFourHour, hourCycle: .zeroBased)):\(minute: .twoDigits)", timeZone: TimeZone(abbreviation: "UTC")!)
        let date = try? Date(dateString, strategy: strategy)
        return date!
    }
}
