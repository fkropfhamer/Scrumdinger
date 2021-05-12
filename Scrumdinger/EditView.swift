//
//  EditView.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 12.05.21.
//

import SwiftUI

struct EditView: View {
    @Binding var scrumData: DailyScrum.Data
    @State private var newAttendee: Attendee = Attendee()
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrumData.title)
                HStack {
                    Slider(value: $scrumData.lengthInMinutes, in: 5...30, step: 1.0) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(scrumData.lengthInMinutes)) minutes")
                }
                ColorPicker("Color", selection: $scrumData.color)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrumData.attendees) { attendee in
                    Text(attendee.getFullName())
                }
                .onDelete { indices in
                    scrumData.attendees.remove(atOffsets: indices)
                }
                HStack {
                    VStack {
                        TextField("Firstname", text: $newAttendee.firstname)
                        TextField("Surname", text: $newAttendee.surname)
                    }
                    Button(action: {
                        withAnimation {
                            scrumData.attendees.append(newAttendee)
                            newAttendee = Attendee()
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendee.firstname.isEmpty || newAttendee.surname.isEmpty)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())

    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(scrumData: .constant(DailyScrum.data[0].data))
    }
}
