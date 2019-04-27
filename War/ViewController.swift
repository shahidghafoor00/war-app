//
//  ViewController.swift
//  War
//
//  Created by Shahid Ghafoor on 27/04/2019.
//  Copyright © 2019 Shahid Ghafoor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cardOne: UIImageView!
    @IBOutlet weak var cardTwo: UIImageView!
    @IBOutlet weak var userScors: UILabel!
    @IBOutlet weak var cpuScors: UILabel!
    
    var yourScors = 0
    var machineScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDeal(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        cardOne.image = UIImage(named: "card\(leftNumber)")
        cardTwo.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            yourScors += 1
            userScors.text = String(yourScors)
        } else if leftNumber < rightNumber {
             machineScore += 1
            cpuScors.text = String(machineScore)
        } else {
            // draw
        }
    }
}

