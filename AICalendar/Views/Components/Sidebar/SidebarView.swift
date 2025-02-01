//
//  SidebarView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct SidebarView: View {
    @EnvironmentObject var uiState: UIState
    
    var body: some View {
        NavigationStack {
            List(selection: $uiState.selectedTab) {
                Section(header: Text("Main")) {
                    ForEach(SidebarTabs.tabs, id: \.self) { tab in
                        SidebarTabView(tab: tab)
                    }
                }
                .collapsible(false)
            }
            .listStyle(.sidebar)
            .toolbar {
                ToolbarItemGroup {
                    Image(systemName: "sidebar.left")
                }
            }
        }
    }
}
