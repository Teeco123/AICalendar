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
    
    var body: some View {
        HStack(spacing: 10) {
            Text(day.description)
        }
        .frame(width: dayWidth)
        .offset(x: offsetX)
    }
}
