//
//  SidebarView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct SidebarView: View{
    var body: some View {
        List(){
            
            // Main section
            Section(header: Text("Main")){
                ForEach(SidebarTabs.tabs, id: \.self){ tab in
                    SidebarTabView(tab: tab)
                }
            }
            .collapsible(false)
        }
        .listStyle(.sidebar)
        
        // Toggle sidebar button
        .toolbar{
            ToolbarItemGroup {
                Image(systemName: "sidebar.left")
            }
        }
    }
}
