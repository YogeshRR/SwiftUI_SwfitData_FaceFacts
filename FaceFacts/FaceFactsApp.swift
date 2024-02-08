//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Yogesh Raut on 08/02/24.
//

import SwiftUI
import SwiftData

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for : Person.self)
    }
}
