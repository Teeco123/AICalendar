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
    
    var body: some View {
        NavigationSplitView{
            SidebarView(sidebarViewModel: sidebarViewModel)
        } detail: {
            switch sidebarViewModel.selectedTab {
            case .calendar:
                CalendarView(eventViewModel: eventViewModel)
            case .settings:
                Text("XDDD")
            }
        }
    }
}
