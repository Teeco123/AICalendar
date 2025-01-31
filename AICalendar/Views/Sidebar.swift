//
//  Sidebar.swift
//  AICalendar
//
//  Created by Kacper on 31/01/2025.
//

import SwiftUI

struct Sidebar: View{
    @Binding var isHovering: Bool
    @State private var showText = false
    @State var sidebarWidth: CGFloat = 55
    
    var body: some View{
        VStack(){
            if !isHovering{
                HStack(){
                    Image(systemName: "calendar")
                        .font(.system(size: 28))
                        .padding(.leading, 10)
                        .padding(.vertical)
                }
                .frame( maxWidth: .infinity, alignment: .leading)
            } else {
                HStack(alignment: .center){
                    Image(systemName: "calendar")
                        .font(.system(size: 28))
                        .padding(.leading, 10)
                        .padding(.vertical)
                    Text("Calendar")
                }
                .frame( maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }
        .frame(width: sidebarWidth)
        .background(.red)
        .onHover(){ hovering in
            withAnimation(.linear(duration: 0.2)){
                sidebarWidth = hovering ? 140 : 55
                isHovering = hovering
            }
        }
    }
}
