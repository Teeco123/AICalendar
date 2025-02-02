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
    
    private var hourHeight: CGFloat {
        calendarHeight / CGFloat(endHour - startHour + 1)
    }
    
    let calendar = Calendar.current
    
    var duration: Double {
      event.endDate.timeIntervalSince(event.startDate)
    }

    var hour: Int {
      calendar.component(.hour, from: event.startDate)
    }

    var minute: Int {
      calendar.component(.minute, from: event.startDate)
    }
    
    var offset: Double {
        (Double(hour - startHour) * Double(hourHeight)) +
        (Double(minute) / 60 * Double(hourHeight)) +
        20 - 64
    }
    
    var height: Double {
      let timeHeight = (duration / 60 / 60) * Double(hourHeight)
      return timeHeight < 16 ? 16 : timeHeight
    }
    
    
    var body: some View {
        Text(event.startDate.description)
            .bold()
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .frame(height: height)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.mint)
                    .padding(1)
            )
            .offset(y: CGFloat(offset))
    }
}
