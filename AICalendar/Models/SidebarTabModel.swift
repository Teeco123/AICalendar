//
//  SidebarButtonModel.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import Foundation

enum SidebarSelection {
    case calendar
    case settings
}

struct SidebarTab: Hashable, Identifiable{
    let id = UUID()
    var view: SidebarSelection
    var icon: String
    var text: String
    
    public init(view: SidebarSelection, icon: String, text: String) {
        self.view = view
        self.icon = icon
        self.text = text
    }
}

struct SidebarTabs {
    static let tabs: [SidebarTab] = [
        SidebarTab(view: .calendar, icon: "calendar", text: "Calendar"),
        SidebarTab(view: .settings, icon: "gear", text: "Settings")
    ]
}

