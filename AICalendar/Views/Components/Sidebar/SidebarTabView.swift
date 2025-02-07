//
//  SidebarTabView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct SidebarTabView: View {
    let tab: SidebarTab
    
    var body: some View {
        // Single button tab on navbar
        NavigationLink(value: tab.view) {
            Label(tab.text, systemImage: tab.icon)
        }
    }
}
