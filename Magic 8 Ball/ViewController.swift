//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mike Wang on 17/07/19.
//  Copyright © 2019 Mike Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray: Array = ["ball1", "ball2","ball3","ball4","ball5"]

    @IBOutlet weak var ballImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNewImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        print("ask clicked")
        updateNewImage()
    }
    
    private func updateNewImage() {
        ballImageView.image = UIImage(named: ballArray[createRandomNumber()])
    }
    
    private func createRandomNumber () -> Int {
        return Int.random(in: 0 ... 4)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateNewImage()
    }
}

