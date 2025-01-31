//
//  Sidebar.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct Sidebar: View{
    @Binding var currentView: SidebarSelection
    @Binding var isHovering: Bool
    @State private var showText = false
    @State var sidebarWidth: CGFloat = 55
    
    @State var tabs: [SidebarButton] = [
        SidebarButton(view: .calendar, icon: "calendar", text: "Calendar"),
        SidebarButton(view: .settings, icon: "gear", text: "Settings")
    ]
    
    var body: some View{
        VStack(){
            if !isHovering{
                ForEach(tabs, id: \.view){ tab in
                    HStack(){
                        Image(systemName: tab.icon)
                            .font(.system(size: 28))
                            .padding(.leading, 10)
                            .padding(.vertical, 8)
                    }
                    .frame( maxWidth: .infinity, alignment: .leading)
                }
            } else {
                ForEach(tabs, id: \.view){ tab in
                    Button(action: {
                        currentView = tab.view
                    }){
                        HStack(alignment: .center){
                            Image(systemName: tab.icon)
                                .font(.system(size: 28))
                                .padding(.leading, 10)
                                .padding(.vertical, 8)
                            Text(tab.text)
                        }
                        .frame( maxWidth: .infinity, alignment: .leading)
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(.plain)
                }
            }
            Spacer()
        }
        .frame(width: sidebarWidth)
        .background(.ultraThickMaterial)
        .background(.black)
        .onHover(){ hovering in
            withAnimation(.linear(duration: 0.2)){
                sidebarWidth = hovering ? 140 : 55
                isHovering = hovering
            }
        }
    }
}
