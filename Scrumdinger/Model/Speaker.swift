//
//  Speaker.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 13.05.21.
//

import Foundation

struct Speaker: Identifiable {
    let id: UUID = UUID()
    var isCompleted: Bool
    let attendee: Attendee
    var fullName: String {
        attendee.fullName
    }
    
    init(attendee: Attendee, isCompleted: Bool = false) {
        self.isCompleted = isCompleted
        self.attendee = attendee
    }
    
    
}
