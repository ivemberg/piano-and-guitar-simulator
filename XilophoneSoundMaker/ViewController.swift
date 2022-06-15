//
//  ViewController.swift
//  XilophoneSoundMaker
//
//  Created by mr on 11/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var Ds: UIButton!
    @IBOutlet var C4: UIButton!
    @IBOutlet var B: UIButton!
    @IBOutlet var A: UIButton!
    @IBOutlet var G: UIButton!
    @IBOutlet var F: UIButton!
    @IBOutlet var E: UIButton!
    @IBOutlet var D: UIButton!
    @IBOutlet var Auto: UIButton!
    @IBOutlet var Fs: UIButton!
    @IBOutlet var Gs: UIButton!
    @IBOutlet var As: UIButton!
    @IBOutlet var Cs: UIButton!
    @IBOutlet var C3: UIButton!
    
    var bool = true
    
    var player : AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        switch sender {
        case C3:
            playSound(name: "mp3/C3")
            
        case D:
            playSound(name: "mp3/D3")
            
        case E:
            playSound(name: "mp3/E3")
            
        case F:
            playSound(name: "mp3/F3")
            
        case G:
            playSound(name: "mp3/G3")
            
        case A:
            playSound(name: "mp3/A3")
            
        case B:
            playSound(name: "mp3/B3")
            
        case C4:
            playSound(name: "mp3/C4")
            
        case Cs:
            playSound(name: "mp3/C3#")
            
        case Ds:
            playSound(name: "mp3/D3#")
            
        case Fs:
            playSound(name: "mp3/F3#")
            
        case Gs:
            playSound(name: "mp3/G3#")
            
        case As:
            playSound(name: "mp3/A3#")
            
             
        case Auto:
            
            if bool{
                
                playSound(name: "mp3/bagno_a_mezzanotte_elodie_easy_slow_piano_tutorial_video_4k_8372850589059867353")
                bool = false
                
            } else {
                
                player.stop()
                bool = true
                
            }
            
        default:
            print("ERROR")
            return
        }
    

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

       
    func playSound(name: String) {
        
        print("#####")
        
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            print("RETURNING ")
            return
        }
        
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print("Error was detected")
            print(error.localizedDescription)
        }
    }

}

