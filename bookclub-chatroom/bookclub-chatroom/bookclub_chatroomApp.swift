//
//  bookclub_chatroomApp.swift
//  bookclub-chatroom
//
//  Created by Tianna Alina Lopes on 1/16/24.
//

import SwiftUI
import Firebase

@main
struct bookclub_chatroomApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
