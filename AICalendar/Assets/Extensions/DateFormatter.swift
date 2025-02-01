//
//  DateFormatter.swift
//  AICalendar
//
//  Created by Kacper on 02/02/2025.
//

import SwiftUI

extension Date {
  static func from(_ dateString: String, format: String = "yyyy-MM-dd HH:mm") -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.date(from: dateString)!
  }
}
