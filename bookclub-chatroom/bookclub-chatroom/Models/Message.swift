//
//  Message.swift
//  bookclub-chatroom
//
//  Created by Tianna Alina Lopes on 1/17/24.
//

import Foundation

struct Message: Identifiable, Codable{
    var id: String
    var text: String
    var recieved: Bool
    var timestamp: Date
}
