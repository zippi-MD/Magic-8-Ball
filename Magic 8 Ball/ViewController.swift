//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alejandro Mendoza on 12/14/17.
//  Copyright © 2017 Alejandro Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomNumber: Int = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        setBallImage()
    }
    
    func setBallImage() {
        randomNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomNumber])
    }

}

