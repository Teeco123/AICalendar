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
    var weekSymbols: [String] = []
    var monthSymbols: [String] = []
    
    init(){
        newCalendar()
    }
    
    func newCalendar(){
        calendar.firstWeekday = 2
        weekSymbols = calendar.weekdaySymbols
        monthSymbols = calendar.monthSymbols
    }
}
