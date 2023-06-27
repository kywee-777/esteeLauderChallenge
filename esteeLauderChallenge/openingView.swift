//
//  openingView.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/26/23.
//

import SwiftUI

struct openingView: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive {
                homeView()
            } else {
                Image("opening")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                VStack(alignment: .center) {
                }
                .padding()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct openingView_Previews: PreviewProvider {
    static var previews: some View {
        openingView()
    }
}
