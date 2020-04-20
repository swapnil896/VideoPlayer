//
//  ViewController.swift
//  VideoPlayerDemo
//
//  Created by Swapnil  Magar on 20/04/20.
//  Copyright © 2020 Swapnil Magar. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK:- VC Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

//MARK:- Private

private extension ViewController {
    
    func playVideo() {
        guard let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8") else {
            return
        }
        
        //Create an AVPlayer passing it the HTTP URL
        let player = AVPlayer(url: url)
        
        //Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        
        //Modally present the player and call the player's play() method when complete
        present(controller, animated: true) {
            player.play()
        }
    }
    
}

//MARK:- IBActions

extension ViewController {
    
    @IBAction func playVideoButtonTapped(_ sender: UIButton) {
        playVideo()
    }
    
}
