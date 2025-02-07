//
//  CalenderEventView.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarEventView: View {
    var event: Event
    var startHour: Int
    var endHour: Int
    var calendarHeight: CGFloat
    var hourLabel: CGSize
    var dayWidth: CGFloat
    
    
    let calendar = Calendar.current
    
    // Calculate height of 1 hour
    private var hourHeight: CGFloat {
        calendarHeight / CGFloat(endHour - startHour + 1)
    }
    
    // Convert duration, hour, minutes from event to variables
    var duration: Double {
        event.endDate.timeIntervalSince(event.startDate)
    }
    
    var hour: Int {
        calendar.component(.hour, from: event.startDate)
    }
    
    var minute: Int {
        calendar.component(.minute, from: event.startDate)
    }
    
    // Calculate offset to align events to their hour
    var offsetY: Double {
        (Double(hour - startHour) * Double(hourHeight)) +
        (Double(minute) / 60 * Double(hourHeight)) +
        20 - 64
    }
    
    // Calculate offset to align event to their day
    var offsetX: CGFloat {
        dayWidth / 2
    }
    
    // Calculate height of event (based on hourHeight)
    var height: Double {
        let timeHeight = (duration / 60 / 60) * Double(hourHeight)
        return timeHeight < 16 ? 16 : timeHeight
    }
    
    
    var body: some View {
        // Display event
        Text(event.startDate.description)
            .bold()
            .padding()
            .frame(maxWidth: dayWidth, alignment: .topLeading)
            .frame(height: height)
        // Event box
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.mint)
                    .padding(1)
            )
        // Offset for hour alignment
            .offset(x: offsetX, y: CGFloat(offsetY))
    }
}
