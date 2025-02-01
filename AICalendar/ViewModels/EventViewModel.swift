//
//  EventViewModel.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

@Observable
class EventViewModel{
    var events: [Event] = []
    
    init() {
        loadEvents()
    }
    
    func loadEvents() {
        events = [
            Event(
                title: "Event 1",
                startDate: .from("2025-02-01 13:00"),
                endDate: .from("2025-02-01 15:00")
            ),
        ]
    }
}
