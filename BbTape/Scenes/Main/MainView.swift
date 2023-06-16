//
//  MainView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI
import AVKit


struct MainView: View {
    
    @State var avPlayer: AVPlayer = AVPlayer(url: Bundle.main.url(forResource: "bbtape23", withExtension: "mp4")!)
    
    
    var body: some View {
                
        VideoPlayer(player: avPlayer) {
            VStack {
                Text("BB Tape")
                    .foregroundColor(.black)
                    .padding(.horizontal, 5)
                    .background(.white.opacity(0.7))
                Spacer()
            }
            .frame(width: 400, height: 300)
            .scaledToFit()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
