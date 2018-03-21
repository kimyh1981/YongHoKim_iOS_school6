//
//  ViewController.swift
//  PracticeWithUdemyCourseFrom20180317
//
//  Created by KimYong Ho on 2018. 3. 17..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    var score = 0
    @IBOutlet weak var scoreLable: UILabel!
    var round = 0
    @IBOutlet weak var roundLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        startOver()
        
        let thumImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal") //UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumImageNormal, for: .normal)
        
        let thumImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage?.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage?.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
    }

    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLable.text = String(score)
        roundLabel.text = String(round)
    }

    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    @IBAction func startOver() {
        score = 0
        round = 0
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }


    @IBAction func showAlert() {
        
        let difference: Int = abs(targetValue - currentValue)
        var point: Int = 100 - difference
        let title: String
        if difference == 0 {
            title = "Perfect Score!"
            point += 200
        } else if difference < 5 {
            title = "You almose had it!"
            if difference == 1 {
                point += 100
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Try to get a perfect score!"
        }
        score += point
        
        let message = "Your socore is \(point)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Wow! Awesome", style: .default, handler: { action in self.startNewRound() })
        alert.addAction(action)
        round += 1
        
        present(alert, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

