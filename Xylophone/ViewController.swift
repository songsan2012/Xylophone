//
//  ViewController.swift
//  Xylophone
//
//  Created by song on 4/27/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // -- Create Sound Support
        var audioPlayer: AVAudioPlayer!
        
        let punchSound = "punchSound"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        // -- Find out which button was pressed
        print(sender.tag)
        
        // -- Play the note
        self.playSound("note\(sender.tag)")
    }
    
    
    func playSound(_ name: String) {
                    
                    if let sound = NSDataAsset(name: name) {
                        do {
                            try audioPlayer = AVAudioPlayer(data: sound.data)
                            audioPlayer.play()
                        }
                        catch
                        {
                            print("error")
                        }
                    }
                    else {
                        print("else")
                    }
                    
    }
    
    
}

