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
        LazyHStack(spacing: 0) {
            ForEach(0...days.count, id: \.self) { index in
                VStack(spacing: 10) {
                    Rectangle()
                        .fill(.gray.opacity(0.6))
                        .frame(width: 1, height: .infinity)
                }
                .frame(width: dayWidth)
                .foregroundColor(.gray)
            }
        }
        .offset(y: hourLabel.height - 20)
    }
}

