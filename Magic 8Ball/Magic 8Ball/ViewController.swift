//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Skyler Moomey on 7/14/19.
//  Copyright © 2019 Skyler Moomey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImages: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomInt: Int = 0;
    
    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeBallImages()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        changeBallImages()
    }
    
    func changeBallImages()
    {
        randomInt = Int.random(in: 0 ... 5)
        
        eightBallImage.image = UIImage(named: ballImages[randomInt])
    }
    
}

