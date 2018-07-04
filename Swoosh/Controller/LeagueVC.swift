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
        case 1: setLeague(leagueType: "mens", senderTag: sender.tag)
        case 2: setLeague(leagueType: "womens", senderTag: sender.tag)
        case 3: setLeague(leagueType: "coed", senderTag: sender.tag)
        default:
            print("error in leagueButtonPressed")
        }
    }
    
    func setLeague(leagueType: String, senderTag: Int) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        
        if senderTag == 1 {
            mensButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            mensButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            womensButtonNormal()
            coedButtonNormal()
        } else if senderTag == 2 {
            womensButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            womensButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            mensButtonNormal()
            coedButtonNormal()
        } else {
            coedButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            coedButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
            
            mensButtonNormal()
            womensButtonNormal()
        }
    }
    
    func mensButtonNormal() {
        mensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        mensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
    func womensButtonNormal() {
        womensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        womensButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
    func coedButtonNormal() {
        coedButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        coedButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
