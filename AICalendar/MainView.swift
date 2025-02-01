//
//  MainView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct MainView: View {
    @State var sidebarViewModel = SidebarViewModel()
    @State var eventViewModel = EventViewModel()
    @State var calendarViewModel = CalendarViewModel()
    
    var body: some View {
        NavigationSplitView{
            SidebarView(sidebarViewModel: sidebarViewModel)
        } detail: {
            switch sidebarViewModel.selectedTab {
            case .calendar:
                CalendarView(
                    eventViewModel: eventViewModel,
                    calendarViewModel: calendarViewModel)
            case .settings:
                Text("XDDD")
            }
        }
    }
}
