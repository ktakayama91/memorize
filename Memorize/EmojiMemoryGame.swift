//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kei Takayama on 26/08/21.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚗", "🚙", "🚕", "🚓", "🚌", "🚎","🏎", "🚑", "🚒", "🚐",
                         "🚚", "🛻","🚛", "🚜", "🛺", "🛴", "🚲", "🛵","🏍", "🚃"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }

    private var model: MemoryGame<String> = createMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
