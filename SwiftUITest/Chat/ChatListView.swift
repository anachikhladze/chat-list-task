//
//  ChatListView.swift
//  SwiftUITest
//
//  Created by Anna Sumire on 06.12.23.
//

import SwiftUI

struct ChatListView: View {
    
    @State private var chatItems: [ChatItem] = ChatList.sampleChats
    @State private var showingClearAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(chatItems) { item in
                    HStack(alignment: .top) {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .cornerRadius(4)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.contactName)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            
                            Text(item.message)
                                .font(.subheadline)
                                .lineLimit(1)
                                .foregroundStyle(.secondary)
                        }
                        
                        Spacer()
                        
                        Text(item.date)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.trailing, 4)
                }
                
                HStack(spacing: 10) {
                    Button(action: {
                        chatItems.removeAll()
                        showingClearAlert = true
                    }) {
                        Text("Clear Chats")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 160, height: 45)
                            .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                            .cornerRadius(6.0)
                    }
                    
                    Button(action: {
                        chatItems = ChatList.sampleChats
                    }) {
                        Text("Restore Chats")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 160, height: 45)
                            .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                            .cornerRadius(6.0)
                    }
                }
                
            }
            .listStyle(.inset)
            .navigationBarTitle("Chats", displayMode: .inline)
            .alert("Chats Deleted", isPresented: $showingClearAlert) {
                // We only need default "OK" button here, so I am not adding anything
            } message: {
                Text("You can restore chats by clicking \"Restore Chats\" button")
            }
        }
        .colorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
