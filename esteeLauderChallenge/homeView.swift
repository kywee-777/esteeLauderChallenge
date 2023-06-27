//
//  homeView.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/26/23.
//

import SwiftUI
import AVKit

struct homeView: View {
    var body: some View {
        ZStack{
            Image("3")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            
            Image("header")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            
            ScrollView{
                VStack{
                    VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteeVid1", withExtension: "mp4")!))
                        .frame(width: 300, height: 300)
                        .position(x:180, y:290)
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white)
                .cornerRadius(20)
                .opacity(0.5)
                .frame(width: 340, height: 340)     .position(x:195, y:305))
                
            }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
