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
    
    func selectTab(_ tab: SidebarViewType){
        selectedTab = tab
    }
    
}
