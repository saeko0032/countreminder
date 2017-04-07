//
//  DateManager.swift
//  Calminder
//
//  Created by saekof on 2017-04-04.
//  Copyright © 2017 saeko0032. All rights reserved.
//

import UIKit

class DateManager: NSObject {
    var currentMonthOfDates = [NSDate]()
    var selectedDate = NSDate()
    let daysPerWeek: Int = 7
    var numberOfItems: Int!
    
    func daysAcquisition() -> Int {
        let calendar = Calendar.current
        let rangeOfWeeks = NSCalendar.current.range(of: NSCalendar.Unit.weekOfMonth, in: NSCalendar.Unit.month, for: firstDateOfMonth())
        
        let numberOfWeeks = rangeOfWeeks.length
        
        numberOfItems = numberOfWeeks * daysPerWeek
        
        return numberOfItems
    
    }
    
    func firstDateOfMonth() -> Date {
        let components = NSCalendar.current.components([.year, .month, .day], from: selectedDate)
        components.day = 1
        let firstDateOfMonth = NSCalendar.current.date(from: components)
        return firstDateOfMonth
    
    }

}
