//
//  AICalendarApp.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

@main
struct AICalendarApp: App {
    @StateObject var uiState = UIState()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(uiState)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UIState())
    }
}
