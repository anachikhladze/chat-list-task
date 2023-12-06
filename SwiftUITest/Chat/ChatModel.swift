//
//  ChatModel.swift
//  SwiftUITest
//
//  Created by Anna Sumire on 06.12.23.
//

import Foundation

struct ChatItem: Identifiable {
    let id = UUID()
    let imageName: String
    let contactName: String
    let message: String
    let date: String
}

struct ChatList {
    static let sampleChats = [
        ChatItem(imageName: "Avatar", contactName: "Francisco Miles", message: "I went there yesterday", date: "18:14"),
        ChatItem(imageName: "Avatar-2", contactName: "Arlene Fisher", message: "IDK what else is there to do", date: "22:31"),
        ChatItem(imageName: "Avatar-3", contactName: "Darlene Hawkins", message: "No, I can't come tomorrow.", date: "09:18"),
        ChatItem(imageName: "Avatar-4", contactName: "Eduardo Mckinney", message: "Go to hell", date: "Yesterday"),
        ChatItem(imageName: "Avatar-5", contactName: "Aubrey Cooper", message: "I hope it goes well.", date: "Friday"),
        ChatItem(imageName: "Avatar-6", contactName: "Jorge Nguyen", message: "So, what's your plan this weekend", date: "Thursday"),
        ChatItem(imageName: "Avatar-7", contactName: "Cody Cooper", message: "What's the progress on that task?", date: "Tuesday"),
        ChatItem(imageName: "Avatar-8", contactName: "Kristin Pena", message: "Yeas, you're right!", date: "7/22/20"),
        ChatItem(imageName: "Avatar-9", contactName: "Brandie Watson", message: "I went there yesterday", date: "8/19/20"),
        ChatItem(imageName: "Avatar-10", contactName: "Stella Henry", message: "Martinique", date: "9/15/20")
    ]
}
