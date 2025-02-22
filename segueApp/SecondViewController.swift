//
//  SecondViewController.swift
//  segueApp
//
//  Created by Beyza Aslan on 22.02.2025.
//

import UIKit

class SecondViewController: UIViewController {

    var myName =  ""
    
    @IBOutlet weak var myLabelSecond: UILabel!
    //name: yazan kısım
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
    }
}
    
