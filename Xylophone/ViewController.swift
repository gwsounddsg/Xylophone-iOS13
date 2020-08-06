//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        guard let title = sender.currentTitle else {return}
        playSound(title)
        
        // dim button
        sender.alpha = 0.5
        sender.fadeAlpha(to: 1.0, duration: 0.2)
    }
    

    func playSound(_ note: String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }
        catch {
            print(error.localizedDescription)
        }
    }
}

