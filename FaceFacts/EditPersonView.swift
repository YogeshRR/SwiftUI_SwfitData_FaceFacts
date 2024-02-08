//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Yogesh Raut on 08/02/24.
//

import SwiftUI
import SwiftData

struct EditPersonView: View {
   @Bindable var person : Person
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                TextField("Email Address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                }
            Section {
                TextField("Notes",text: $person.details, axis: .vertical)
                
                
            }
            }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
