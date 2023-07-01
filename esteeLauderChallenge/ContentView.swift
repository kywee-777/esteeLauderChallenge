//
//  ContentView.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
//            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteeVid1", withExtension: "mp4")!))
//                .frame(width: 300, height: 300)
//                .position(x:180, y:290)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
