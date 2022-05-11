//
//  ViewController.swift
//  BasicVideoPlayer
//
//  Created by Евгений Березенцев on 11.05.2022.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playVideo() {
        
        guard let url = URL(string: "https://multiplatform-f.akamaihd.net/i/multi/will/bunny/big_buck_bunny_,640x360_400,640x360_700,640x360_1000,950x540_1500,.f4v.csmil/master.m3u8") else { return }
        
        // Creating an AVPlayer
        let player = AVPlayer(url: url)
        
        
        // Create a new AVPlayerViewController
        let controller = AVPlayerViewController()
        controller.player = player
//        controller.allowsPictureInPicturePlayback = true
//        controller.canStartPictureInPictureAutomaticallyFromInline = true
        
        // Modally present the player
        present(controller, animated: true) {
            player.play()
        }
        
        
    }
    
    
}

