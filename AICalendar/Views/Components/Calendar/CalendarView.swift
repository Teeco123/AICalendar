//
//  Calendar.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarView: View {
    @Bindable var calendarViewModel: CalendarViewModel
    @Bindable var eventViewModel: EventViewModel
    
    var startHour: Int = 0
    var endHour: Int = 24
    let calendarHeight: CGFloat = 1600
    var dayWidth: CGFloat = 100
    var use24HourFormat: Bool = true
    private let hourLabel: CGSize = .init(width: 50, height: 40)
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        // Scrollview up / down for hours
        ScrollView(.vertical){
            ZStack(alignment: .topLeading){
                CalendarHLinesView(
                    startHour: startHour,
                    endHour: endHour,
                    calendarHeight: calendarHeight,
                    use24HourFormat: use24HourFormat,
                    hourLabel: hourLabel
                )
                // Scrollview left / right with rectangle on left for spacing grid from hours
                HStack(spacing: 0){
                    Rectangle()
                        .fill(.black.opacity(0))
                        .frame(width: hourLabel.width + 10, height: .infinity, alignment: .trailing)
                    ScrollView(.horizontal, showsIndicators: false){
                        // Separating V lines and day names
                        ZStack(alignment: .topLeading){
                            CalendarVLinesView(
                                hourLabel: hourLabel,
                                dayWidth: dayWidth,
                                days: calendarViewModel.days
                            )
                            CalendarDaysView(
                                days: calendarViewModel.days,
                                dayWidth: dayWidth
                            )
                            // Displaying events
                            ForEach(eventViewModel.processedEvents, id: \.self){ events in
                                HStack(){
                                    ForEach(events){ event in
                                        CalendarEventView(
                                            event: event,
                                            startHour: startHour,
                                            endHour: endHour,
                                            calendarHeight: calendarHeight,
                                            hourLabel: hourLabel,
                                            dayWidth: dayWidth
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
