//
//  CalendarDaysView.swift
//  AICalendar
//
//  Created by Kacper on 06/02/2025.
//

import SwiftUI

struct CalendarDaysView: View {
    let index: Int
    let day: Date
    let dayWidth: CGFloat
    
    var offsetX: CGFloat{
        (CGFloat(index) * dayWidth) + (dayWidth / 2)
    }
    
    var formattedDay: String{
        let formatter = DateFormatter()
        formatter.dateFormat = "EE d"
        let formattedDay = formatter.string(from: day)
        return formattedDay
    }
    
    var body: some View {
        HStack(spacing: 10) {
            Text(formattedDay)
        }
        .frame(width: dayWidth)
        .offset(x: offsetX)
    }
}
