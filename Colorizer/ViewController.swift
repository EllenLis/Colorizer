//
//  ViewController.swift
//  Colorizer
//
//  Created by ElenaL on 05.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 5
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewBack.backgroundColor = .systemGray6
        labelTimer.isHidden = true
        updateLabel()
    }

    @IBOutlet weak var labelTimer: UILabel!
    
    @IBOutlet weak var viewBack: UIView!
    
    @IBAction func redBtn(_ sender: Any) {
        viewBack.backgroundColor = .red
        labelTimer.textColor = .black
        startTimer()
        updateLabel()
    }
    @IBAction func blueBtn(_ sender: Any) {
        viewBack.backgroundColor = .blue
        startTimer()
        labelTimer.textColor = .white
        updateLabel()
    }
    @IBAction func greenBtn(_ sender: Any) {
        viewBack.backgroundColor = .green
        labelTimer.textColor = .black
        startTimer()
        updateLabel()
    }
    
    func updateLabel() {
        labelTimer.text = "Timer: \(counter)"
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeColorTimer), userInfo: nil, repeats: true)
        labelTimer.isHidden = false
        counter = 5
    }
    
    @objc func changeColorTimer() {
        counter -= 1
        if counter == 0 {
            timer?.invalidate()
            viewBack.backgroundColor = .systemGray6
            labelTimer.isHidden = true
        }
        updateLabel()
    }
    
}

