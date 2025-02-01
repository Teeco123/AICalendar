//
//  CalenderEventView.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarEventView: View {
    var startHour: Int
    var endHour: Int
    var calendarHeight: CGFloat
    var hourLabel: CGSize
    
    private var hourHeight: CGFloat {
        calendarHeight / CGFloat(endHour - startHour + 1)
    }
    
    var offset: Double {
        (Double(2 - startHour) * Double(hourHeight)) +
        (Double(30) / 60 * Double(hourHeight)) +
        10
    }
    
    var height: Double {
      let timeHeight = (10800 / 60 / 60) * Double(hourHeight)
      return timeHeight < 16 ? 16 : timeHeight
    }
    
    var body: some View {
        Text("Event")
            .bold()
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .frame(height: height)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.mint)
            )
            .offset(y: CGFloat(offset))
    }
}
