//
//  SidebarButtonModel.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

enum SidebarSelection {
    case calendar
    case settings
}

struct SidebarButton{
    var view: SidebarSelection
    var icon: String
    var text: String
}
