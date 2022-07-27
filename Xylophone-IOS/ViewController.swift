//
//  ViewController.swift
//  Xylophone-IOS
//
//  Created by Maricel Sumulong on 7/14/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
    
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        //print("Start >> \(sender.currentTitle!)")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            //print("End >> \(sender.currentTitle!)")
            sender.alpha = 1
        })
        
        
    }
    
    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
    }
    
}

