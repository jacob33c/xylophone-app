//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(note: sender.tag)
       
    }
    
    func playSound(note: Int){
        let soundURL = Bundle.main.url(forResource: "note\(note)", withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        player.play()
        
    }
}







