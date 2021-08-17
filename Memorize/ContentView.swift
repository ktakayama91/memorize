//
//  ContentView.swift
//  Memorize
//
//  Created by Kei Takayama on 12/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(alignment: .center, content: {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            
            Text("Hello, world!")
        })
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
