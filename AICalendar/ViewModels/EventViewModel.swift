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
        // Sort events by start date to process them in chronological order
        let sortedEvents = events.sorted { (event1: Event, event2: Event) -> Bool in
            event1.startDate < event2.startDate
        }
        
        var currentEvents: [Event] = [] // Stores the current group of overlapping events
        
        for event in sortedEvents {
            // Find the latest end time in the current group
            if let latestEndTimeInCurrentEvents = currentEvents.map({ $0.endDate }).max(),
               event.startDate < latestEndTimeInCurrentEvents {
                // If the event starts before the latest end time, add it to the current group
                currentEvents.append(event)
            } else {
                // If there's no overlap, save the current group and start a new one
                if !currentEvents.isEmpty {
                    processedEvents.append(currentEvents)
                }
                currentEvents = [event]
            }
        }
        
        // Add the last group if not empty
        if !currentEvents.isEmpty {
            processedEvents.append(currentEvents)
        }
    }
    
}
