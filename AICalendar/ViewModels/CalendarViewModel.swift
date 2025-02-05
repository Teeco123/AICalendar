//
//  DaysOfWeekViewModel.swift
//  AICalendar
//
//  Created by Kacper on 01/02/2025.
//
import SwiftUI
import Foundation

@Observable
class CalendarViewModel{
    var calendar: Calendar = Calendar.current
    var days: [Date] = []
    
    init(years: Int){
        days = DateGenerator.generateDates(forYears: 10)
    }
}
