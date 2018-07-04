//
//  SkillVC.swift
//  Swoosh
//
//  Created by Connie Liu on 7/3/18.
//  Copyright © 2018 Connie Liu. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var finishButton: BorderButton!
    @IBOutlet weak var beginnerButton: BorderButton!
    @IBOutlet weak var ballerButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredLeague)
    }
    
    @IBAction func skillLevelButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1: setSkillLevel(level: "beginner", senderTag: sender.tag)
        case 2: setSkillLevel(level: "baller", senderTag: sender.tag)
        default: print("error in skillLevelButtonPressed")
        }
    }
    
    func setSkillLevel(level: String, senderTag: Int) {
        player.skillLevel = level
        finishButton.isEnabled = true
        
        if senderTag == 1 {
            ballerButtonNormal()
        } else if senderTag == 2 {
            beginnerButtonNormal()
        } else {
            print("error in setSkillLevel")
        }
    }
    
    func beginnerButtonNormal() {
        beginnerButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        beginnerButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        ballerButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        ballerButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    }
    func ballerButtonNormal() {
        beginnerButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        beginnerButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        ballerButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        ballerButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
}
