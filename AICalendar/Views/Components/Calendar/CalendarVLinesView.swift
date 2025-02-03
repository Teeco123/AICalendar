//
//  CalendarVLines.swift
//  AICalendar
//
//  Created by Kacper on 03/02/2025.
//

import SwiftUI

struct CalendarVLinesView: View{
    var hourLabel: CGSize
    var dayWidth: CGFloat
    
    var body: some View{
        HStack(spacing: 0){
            Rectangle()
                .fill(.black.opacity(0))
                .frame(width: hourLabel.width + 10, height: .infinity, alignment: .trailing)
            ScrollView(.horizontal){
                HStack(spacing: 0) {
                    ForEach(0...20, id: \.self) { index in
                        VStack(spacing: 10) {
                            Rectangle()
                                .fill(.gray.opacity(0.6))
                                .frame(width: 1, height: .infinity)
                        }
                        .frame(width: dayWidth)
                        .foregroundColor(.gray)
                    }
                }
                .offset(y: hourLabel.height - 20)
            }
        }
    }
}

