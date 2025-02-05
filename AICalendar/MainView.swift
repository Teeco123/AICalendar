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
                SidebarView(sidebarViewModel: sidebarViewModel)
                    .navigationSplitViewColumnWidth(140)
            } detail: {
                switch sidebarViewModel.selectedTab {
                case .calendar:
                    CalendarView(
                        calendarViewModel: calendarViewModel,
                        eventViewModel: eventViewModel
                    )
                case .settings:
                    Text("XDDD")
                }
            }
            if showingEditor && sidebarViewModel.selectedTab == .calendar{
                VStack(){
                    Text("Date Editor")
                }
                .frame(width: 180)
            }
        }
        .toolbar {
            Toggle(isOn: $showingEditor) {
                Image(systemName: "sidebar.trailing")
            }
            .toggleStyle(.button)
        }
    }
}
