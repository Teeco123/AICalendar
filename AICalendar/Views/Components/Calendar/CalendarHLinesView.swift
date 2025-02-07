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
    
    // Calculate height of 1 hour
    private var hourHeight: CGFloat {
        calendarHeight / CGFloat(endHour - startHour + 1)
    }
    
    // Format hour to 24h or 12h modes
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
                    // Display formatted hour
                    Text(formattedHour(hour))
                        .font(.caption2)
                        .monospacedDigit()
                        .frame(width: hourLabel.width, height: hourLabel.height, alignment: .trailing)
                    // Draw line on this hour
                    Rectangle()
                        .fill(.gray.opacity(0.6))
                        .frame(height: 1)
                }
                // Spacing between hours
                .foregroundColor(.gray)
                .frame(height: hourHeight, alignment: .top)
            }
        }
    }
}

