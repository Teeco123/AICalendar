//
//  SidebarButtonModel.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import Foundation

enum SidebarViewType {
    case calendar
    case settings
}

struct SidebarTab: Hashable, Identifiable{
    let id = UUID()
    var view: SidebarViewType
    var icon: String
    var text: String
    
    public init(view: SidebarViewType, icon: String, text: String) {
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

