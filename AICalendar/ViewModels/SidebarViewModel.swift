//
//  UIState.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//

import SwiftUI

@Observable
class SidebarViewModel{
    var selectedTab: SidebarViewType = .calendar
    var tabs: [SidebarTab] = []
    
    init() {
        loadTabs()
        selectTab(.calendar)
    }
    
    func loadTabs() {
        tabs = [
            SidebarTab(view: .calendar, icon: "calendar", text: "Calendar"),
            SidebarTab(view: .settings, icon: "gear", text: "Settings")
        ]
    }
    
    func selectTab(_ tab: SidebarViewType){
        selectedTab = tab
    }
    
    var selectedTabBinding: Binding<SidebarViewType?> {
        Binding(
            get: { self.selectedTab },
            set: { self.selectTab($0!) }
        )
    }
}
