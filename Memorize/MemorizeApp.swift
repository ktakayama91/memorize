//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Kei Takayama on 12/08/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
 
