//
//  MainView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct MainView: View {
    @State var sidebarViewModel = SidebarViewModel()
    @State var calendarViewModel = CalendarViewModel(years: 10)
    @State var eventViewModel = EventViewModel()
    
    @State var showingEditor: Bool = false
    
    var body: some View {
        HStack{
            NavigationSplitView{
                // Navbar
                SidebarView(sidebarViewModel: sidebarViewModel)
                    .navigationSplitViewColumnWidth(140)
            } detail: {
                // Display windows based on navbar selection
                switch sidebarViewModel.selectedTab {
                case .calendar:
                    // Display calendar
                    CalendarView(
                        calendarViewModel: calendarViewModel,
                        eventViewModel: eventViewModel
                    )
                case .settings:
                    // Display settings
                    Text("XDDD")
                }
            }
            // Event editor window on right
            if showingEditor && sidebarViewModel.selectedTab == .calendar{
                VStack(){
                    Text("Date Editor")
                }
                .frame(width: 180)
            }
        }
        // Toolbar to show / hide event editor
        .toolbar {
            Toggle(isOn: $showingEditor) {
                Image(systemName: "sidebar.trailing")
            }
            .toggleStyle(.button)
        }
    }
}
