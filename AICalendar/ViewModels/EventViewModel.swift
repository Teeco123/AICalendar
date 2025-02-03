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
    var processedEvents: [[Event]] = []
    
    init() {
        loadEvents()
        processEvents(events)
    }
    
    func loadEvents() {
        events = [
            Event(
                title: "Event 1",
                startDate: .from("2025-02-01 14:00"),
                endDate: .from("2025-02-01 16:00")
            ),
            Event(
                title: "Event 1",
                startDate: .from("2025-02-01 10:00"),
                endDate: .from("2025-02-01 14:00")
            ),
        ]
    }
    
    func processEvents(_ events: [Event]){
        let sortedEvents = events.sorted { (event1: Event, event2: Event) -> Bool in
            event1.startDate < event2.startDate
        }
        var currentEvents: [Event] = []
        for event in sortedEvents {
            if let latestEndTimeInCurrentEvents = currentEvents.map({ $0.endDate }).max(),
               event.startDate < latestEndTimeInCurrentEvents {
                currentEvents.append(event)
            } else {
                if !currentEvents.isEmpty {
                    processedEvents.append(currentEvents)
                }
                currentEvents = [event]
            }
        }
        if !currentEvents.isEmpty {
            processedEvents.append(currentEvents)
        }
    }
}
