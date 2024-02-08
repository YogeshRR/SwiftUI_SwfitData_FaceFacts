//
//  ContentView.swift
//  FaceFacts
//
//  Created by Yogesh Raut on 08/02/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var path = [Person]()
    @Query var people : [Person]
    var body: some View {
        NavigationStack {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }
        }
        .navigationTitle("Face Facts")
        .navigationDestination(for: Person.self) { person in
            Text(person.name)
            
        }
    }
}

#Preview {
    ContentView()
}
