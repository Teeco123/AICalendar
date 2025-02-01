//
//  SidebarView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct SidebarView: View {
    @Bindable var sidebarViewModel: SidebarViewModel
    
    var body: some View {
        NavigationStack {
            List(selection: Binding(
                get: { sidebarViewModel.selectedTab },
                set: { sidebarViewModel.selectTab($0)}
            )) {
                Section(header: Text("Main")) {
                    ForEach(sidebarViewModel.tabs, id: \.self) { tab in
                        SidebarTabView(tab: tab)
                    }
                }
                .collapsible(false)
            }
            .listStyle(.sidebar)
        }
    }
}
