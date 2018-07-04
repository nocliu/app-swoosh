//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Connie Liu on 7/3/18.
//  Copyright © 2018 Connie Liu. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensButton: BorderButton!
    @IBOutlet weak var womensButton: BorderButton!
    @IBOutlet weak var coedButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func backToLeague(backSegue: UIStoryboardSegue) {
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
    }
    
    @IBAction func leagueButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1: selectLeague(leagueType: "mens", senderTag: sender.tag)
        case 2: selectLeague(leagueType: "womens", senderTag: sender.tag)
        case 3: selectLeague(leagueType: "coed", senderTag: sender.tag)
        default:
            print("error in leagueButtonPressed")
        }
    }
    
    func selectLeague(leagueType: String, senderTag: Int) {
        switch senderTag {
        case 1: changeButtons(tag: senderTag)
        case 2: changeButtons(tag: senderTag)
        case 3: changeButtons(tag: senderTag)
        default:
            print("error in selectLeague")
        }
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    func changeButtons(tag: Int) {
        if tag == 1 {
            mensButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            mensButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            womensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            womensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            coedButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            coedButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        } else if tag == 2 {
            womensButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            womensButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            mensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            mensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            coedButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            coedButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        } else {
            coedButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            coedButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            mensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            mensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            womensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            womensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        }
    }
    
}
