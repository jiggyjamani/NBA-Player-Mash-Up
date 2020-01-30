//
//  ViewController.swift
//  NBA Player Mash-Up
//
//  Created by Jamani Fowler on 1/28/20.
//  Copyright © 2020 Jamani Fowler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Stephen", "Dwayne", "Kobe", "Dwight", "Kevin", "John", "Paul", "Chris", "Anthony", "Kyrie", "James", "Demarcus", "Joel", "Charles", "Michael", "Shaquille", "Isaiah", "Russell"]
    
    let last = ["James", "Curry", "Bryant", "Howard", "Durant", "Wall", "George", "Paul", "Davis", "Irving", "Harden", "Cousins", "Embiid", "Barkley", "Jordan", "O' Neal", "Thomas", "Westbrick"]
    
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var LastLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateFirst()
        generateLast()
        
    }
    func generateFirst() {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        FirstLabel.text = answers[randomIndex]
        
        }
        func generateLast() {
        let randomLastIndex = Int.random(in: 0..<last.count)
        
        LastLabel.text = last [randomLastIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    guard motion == .motionShake else { return }

        generateFirst()
        generateLast()


}
}
