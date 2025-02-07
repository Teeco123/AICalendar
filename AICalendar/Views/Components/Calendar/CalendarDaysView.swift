//
//  CalendarDaysView.swift
//  AICalendar
//
//  Created by Kacper on 06/02/2025.
//

import SwiftUI

struct CalendarDaysView: View {
    let days: [Date]
    let dayWidth: CGFloat
    
    var body: some View {
        LazyHStack(alignment: .top, spacing: 0) {
            ForEach(Array(days.enumerated()), id: \.element) { index, day in
                // Format date to display only day name and number
                var formattedDay: String{
                    let formatter = DateFormatter()
                    // Formatter settings
                    formatter.dateFormat = "EE d"
                    let formattedDay = formatter.string(from: day)
                    return formattedDay
                }
                
                // Calculate offset to move days to their line
                var offsetX: CGFloat{
                    dayWidth / 2
                }
                
                // Displaying day name
                Text(formattedDay)
                    .frame(width: dayWidth)
                    .offset(x: offsetX)
            }
        }
    }
}
