//
//  ContentView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var currentView: SidebarSelection = .calendar
    @State var isHovering: Bool = false
    
    var body: some View {
        HStack(spacing: 0){
            Sidebar(currentView: $currentView, isHovering: $isHovering)
            
            Text("HEJ")
                .padding()
                .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}
