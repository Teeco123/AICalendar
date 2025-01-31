//
//  ContentView.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var isHovering = false
    @State var showText = false
    
    var body: some View {
        HStack(spacing: 0){
            Sidebar(isHovering: $isHovering)
            
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
