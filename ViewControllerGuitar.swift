//
//  ViewControllerGuitar.swift
//  XilophoneSoundMaker
//
//  Created by Ivo Junior Bettini on 15/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerGuitar: UIViewController {
    @IBOutlet var A3G: UIButton!
    @IBOutlet var B3G: UIButton!
    @IBOutlet var G3G: UIButton!
    @IBOutlet var E3G: UIButton!
    @IBOutlet var D3G: UIButton!
    @IBOutlet var C3G: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    var player1 : AVAudioPlayer!
    var player2 : AVAudioPlayer!
    var player3 : AVAudioPlayer!
    var player4 : AVAudioPlayer!
    var player5 : AVAudioPlayer!
    var player6 : AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        switch sender {
        case C3G:
            playSound1(name: "GUITAR/C3G")
            
        case D3G:
            playSound2(name: "GUITAR/D3G")
            
        case E3G:
            playSound3(name: "GUITAR/E3G")
            
        case G3G:
            playSound4(name: "GUITAR/G3G")
            
        case B3G:
            playSound5(name: "GUITAR/B3G")
            
        case A3G:
            playSound6(name: "GUITAR/A3G")
            
            
        default:
            print("ERROR")
            return
        }
    

        
    }

       
    func playSound1(name: String) {
        
        print("#####")
        
        //var playerTemp = player
        
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            print("RETURNING ")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player1 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let playerTemp = player1 else { return }
            
            playerTemp.play()
            
        } catch let error {
            print("Error was detected")
            print(error.localizedDescription)
        }
    }
        
        func playSound2(name: String) {
            
            print("#####")
            
            //var playerTemp = player
            
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                print("RETURNING ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player2 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let playerTemp = player2 else { return }
                
                playerTemp.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
        
        func playSound3(name: String) {
            
            print("#####")
            
            //var playerTemp = player
            
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                print("RETURNING ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player3 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let playerTemp = player3 else { return }
                
                playerTemp.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
        
        func playSound4(name: String) {
            
            print("#####")
            
            //var playerTemp = player
            
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                print("RETURNING ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player4 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let playerTemp = player4 else { return }
                
                playerTemp.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
        
        func playSound5(name: String) {
            
            print("#####")
            
            //var playerTemp = player
            
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                print("RETURNING ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player5 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let playerTemp = player5 else { return }
                
                playerTemp.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
        
        func playSound6(name: String) {
            
            print("#####")
            
            //var playerTemp = player
            
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                print("RETURNING ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player6 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let playerTemp = player6 else { return }
                
                playerTemp.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
        
    }
