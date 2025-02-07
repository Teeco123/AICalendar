//
//  CalendarVLines.swift
//  AICalendar
//
//  Created by Kacper on 03/02/2025.
//

import SwiftUI

struct CalendarVLinesView: View{
    var hourLabel: CGSize
    var dayWidth: CGFloat
    var days: [Date]
    
    var body: some View{
        // Vertical lines in LazyStack
        LazyHStack(spacing: 0) {
            ForEach(0...days.count, id: \.self) { index in
                VStack(spacing: 10) {
                    // Drawing Line
                    Rectangle()
                        .fill(.gray.opacity(0.6))
                        .frame(width: 1, height: .infinity)
                }
                // Spacing lines
                .frame(width: dayWidth)
                .foregroundColor(.gray)
            }
        }
        // Moving line down so it aligns with hour 0
        .offset(y: hourLabel.height - 20)
    }
}

