//
//  ViewController.swift
//  playtSound
//
//  Created by Mohamed on 8/5/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    
    let url  = Bundle.main.url(forResource: "note1", withExtension: "wav")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_playSound(_ sender: UIButton) {
        
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            
            
        } catch{
            
            print("error")
        }
        
        audioPlayer.play()
        
        if sender.tag == 2 {
            
            audioPlayer.stop()
        }
        
    }
}

