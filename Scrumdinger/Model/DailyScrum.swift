//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 12.05.21.
//

import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}


extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: Attendee.data, lengthInMinutes: 10, color: randomColor()),
            DailyScrum(title: "App Dev", attendees: [Attendee.data[0], Attendee.data[4]], lengthInMinutes: 5, color: randomColor()),
            DailyScrum(title: "Web Dev", attendees: [Attendee.data[0], Attendee.data[2], Attendee.data[5]], lengthInMinutes: 1, color: randomColor())
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = randomColor()
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from: Data) {
        title = from.title
        attendees = from.attendees
        lengthInMinutes = Int(from.lengthInMinutes)
        color = from.color
    }
}

