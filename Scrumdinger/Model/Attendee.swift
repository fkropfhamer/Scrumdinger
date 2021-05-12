//
//  Attendee.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 12.05.21.
//

import SwiftUI

struct Attendee: Identifiable {
    let id: UUID
    var surname: String
    var firstname: String
    
    init(id: UUID = UUID(), firstname: String = "", surname: String = "") {
        self.id = id
        self.firstname = firstname
        self.surname = surname
    }
    
    public func getFullName() -> String {
        return "\(self.firstname) \(self.surname)"
    }
}

extension Attendee {
    static var data: [Attendee] {
        [
            Attendee(firstname: "David", surname: "Hilbert"),
            Attendee(firstname: "Hermann", surname: "Minkowski"),
            Attendee(firstname: "Felix", surname: "Hausdorff"),
            Attendee(firstname: "Emmy", surname: "Noether"),
            Attendee(firstname: "Ada", surname: "Lovelace"),
            Attendee(firstname: "Stefan", surname: "Banach"),
        ]
    }
}
