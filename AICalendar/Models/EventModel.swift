//
//  EventModel.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import Foundation

struct Event: Identifiable {
    var id = UUID()
    var title: String
    var startDate: Date
    var endDate: Date
}
