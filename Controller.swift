//
//  Controller.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/26/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    private func playVideo(from file:String) {
        let file = file.components(separatedBy: ".")

        guard let path = Bundle.main.path(forResource: file[0], ofType:file[1]) else {
            debugPrint( "\(file.joined(separator: ".")) not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))

        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }    }
