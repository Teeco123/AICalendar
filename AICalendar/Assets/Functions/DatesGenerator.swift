//
//  DatesGenerator.swift
//  AICalendar
//
//  Created by Kacper on 04/02/2025.
//

import Foundation

struct DateGenerator {
    static func generateDates(forYears years: Int) -> [Date] {
        let calendar = Calendar.current
        // Starting date to generate dates from
        let startDate = calendar.date(from: DateComponents(year: 2025, month: 1, day: 1)) ?? Date()
        
        var dates: [Date] = []
        for yearOffset in 0..<years {
            for month in 1...12 {
                for day in 1...31 {
                    // For each day generate day month and year
                    if let date = calendar.date(from: DateComponents(year: calendar.component(.year, from: startDate) + yearOffset, month: month, day: day)),
                       calendar.component(.month, from: date) == month { // Ensure valid days
                        // Append to array
                        dates.append(date)
                    }
                }
            }
        }
        return dates
    }
}
