//
//  CalendarLinesView.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarHLinesView: View{
    var startHour: Int
    var endHour: Int
    var calendarHeight: CGFloat
    var use24HourFormat: Bool
    var hourLabel: CGSize
    
    private var hourHeight: CGFloat {
        calendarHeight / CGFloat(endHour - startHour + 1)
    }
    
    private func formattedHour(_ hour: Int) -> String {
        if use24HourFormat {
            return String(format: "%02d:00", hour)
        } else {
            switch hour {
            case 0, 12:
                return "12 \(hour == 0 ? "am" : "pm")"
            case 13...23:
                return "\(hour - 12) pm"
            case 24:
                return "\(hour - 12) am"
            default:
                return "\(hour) am"
            }
        }
    }
    
    var body: some View{
        VStack(spacing: 0) {
            ForEach(startHour ... endHour, id: \.self) { hour in
                HStack(spacing: 10) {
                    Text(formattedHour(hour))
                        .font(.caption2)
                        .monospacedDigit()
                        .frame(width: hourLabel.width, height: hourLabel.height, alignment: .trailing)
                    Rectangle()
                        .fill(.gray.opacity(0.6))
                        .frame(height: 1)
                }
                .foregroundColor(.gray)
                .frame(height: hourHeight, alignment: .top)
            }
        }
    }
}

