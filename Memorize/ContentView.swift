//
//  ContentView.swift
//  Memorize
//
//  Created by Kei Takayama on 12/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚗", "🚙", "🚕", "🚓", "🚌", "🚎", "🏎", "🚑", "🚒", "🚐", "🚚", "🛻", "🚛", "🚜", "🛺", "🛴", "🚲", "🛵", "🏍", "🚃"].shuffled()
    @State var emojiCount = 16
    
    var body: some View {
        VStack{
            HStack {
                GameTitle()
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                theme1
                theme2
                theme3
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var theme1: some View {
        Button {
            emojis =  ["🚗", "🚙", "🚕", "🚓", "🚌", "🚎", "🏎", "🚑", "🚒", "🚐", "🚚", "🛻", "🚛", "🚜", "🛺", "🛴", "🚲", "🛵", "🏍", "🚃"].shuffled()
        } label: {
            VStack {
                Image(systemName: "car").font(.largeTitle)
                Text("Car")
            }
        }
    }
    
    var theme2: some View {
        Button {
            emojis = ["😀", "😃", "🤣", "🥲", "😉", "😌", "😚", "😋", "🧐", "🤓"].shuffled()
        } label: {
            VStack {
                Image(systemName: "smiley").font(.largeTitle)
                Text("Emoji")
            }
        }
    }
    
    var theme3: some View {
        Button {
            emojis = ["🌪", "🌈", "☀️", "🌤", "⛅️", "🌥", "☁️", "🌦", "🌧", "🌨"].shuffled()
        } label: {
            VStack {
                Image(systemName: "cloud.sun.rain").font(.largeTitle)
                Text("Weather")
            }
        }
    }
    
    
    
    var add: some View {
//      Option 1
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
    
    var remove: some View {
//      Option 2
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct GameTitle: View {
    var body: some View {
        return Text("Memorize!")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
                .padding(.all)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        return ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
