//
//  MainView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var uiState: UIState
    var body: some View {
        NavigationSplitView{
            SidebarView()
        } detail: {
            switch uiState.selectedTab {
            case .calendar:
                CalendarView()
            case .settings:
                Text("XDDD")
            }
        }
    }
}
