import Foundation

var sundays = 0

for year in 1901...2000 {
    for month in 1...12 {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = 1
        let date = Calendar.current.date(from: dateComponents)
        let components = Calendar.current.dateComponents([.weekday], from: date!)
        if components.weekday == 1 {
            sundays += 1
        }
    }
}
