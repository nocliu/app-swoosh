//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Connie Liu on 7/3/18.
//  Copyright © 2018 Connie Liu. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToLeague(backSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
    }
    
}
