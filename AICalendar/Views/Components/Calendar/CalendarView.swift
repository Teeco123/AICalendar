//
//  Calendar.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarView: View {
    @Bindable var eventViewModel: EventViewModel
    @Bindable var calendarViewModel: CalendarViewModel
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 7)  // ✅ 7 Columns for Days
    
    var body: some View {
        VStack {
            HStack {
                ForEach(calendarViewModel.weekSymbols, id: \.self) { weekday in
                    Text(weekday)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .padding()
    }
}
