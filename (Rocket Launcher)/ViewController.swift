//
//  ViewController.swift
//  CS064-4(Rocket Launcher)
//
//  Created by APPLE on 09/11/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var DarkBlueBackground: UIImageView!
    @IBOutlet weak var CloudHolderView: UIView!
    @IBOutlet weak var PowerButton: UIButton!
    @IBOutlet weak var RocketImage: UIImageView!
    @IBOutlet weak var LaunchLabel: UILabel!
    @IBOutlet weak var OnLabel: UILabel!
    var player:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        player = try! AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
    }
    
    
    @IBAction func PowerbuttonTapped(_ sender: Any) {
        DarkBlueBackground.isHidden = true
        PowerButton.isHidden = true
        CloudHolderView.isHidden = false
        player.play()
        UIView.animate(withDuration: 3.0) {
            self.RocketImage.frame = CGRect(x: 0, y: 50, width: 393, height: 633)
        } completion: { finish in
            self.LaunchLabel.isHidden = false
            self.OnLabel.isHidden = false
        }
            
        
    
    }
    
                     
}
