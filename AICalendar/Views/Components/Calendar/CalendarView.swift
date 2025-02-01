//
//  Calendar.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

struct CalendarView: View {
    @Bindable var eventViewModel: EventViewModel
    var body: some View {
        Text(eventViewModel.events.first?.title ?? "")
    }
}
