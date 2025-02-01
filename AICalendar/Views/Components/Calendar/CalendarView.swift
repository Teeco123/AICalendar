//
//  Calendar.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarView: View {
    @Bindable var calendarViewModel: CalendarViewModel
    var startHour: Int = 0
    var endHour: Int = 23
    let calendarHeight: CGFloat = 1600
    var use24HourFormat: Bool = true
    private let hourLabel: CGSize = .init(width: 38, height: 38)
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            ZStack  (alignment: .topLeading){
                CalendarLinesView(
                    startHour: startHour,
                    endHour: endHour,
                    calendarHeight: calendarHeight,
                    use24HourFormat: use24HourFormat,
                    hourLabel: hourLabel
                )
            }
        }
    }
}
