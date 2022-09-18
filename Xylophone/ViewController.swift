import UIKit
import AVFoundation

var player : AVAudioPlayer!

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyButton(_ sender: UIButton) {
        //        print("Keynote Pressed")
        //        print(sender.currentTitle)
    
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            
            sender.alpha = 1
        }
//        sender.alpha = 1
        playSound(soundName : sender.currentTitle!)
    }
    
    func playSound(soundName : String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player.play()
        
    }
}

