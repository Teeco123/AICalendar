//
//  CalendarViewModel.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import Foundation

struct UserCalendar: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var weekSymbols: [String]
    var monthSymbols: [String]
}
