//
//  ViewController.swift
//  Shoes
//
//  Created by Natallia Zubareva on 30.03.18.
//  Copyright © 2018 Natallia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cards: [UIButton]!
    
    var images = ["👜", "👠", "👡", "👢", "👜", "👠", "👡", "👢"]
    let backColor = UIColor(red: 230/255, green: 100/255, blue: 255/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for (i, card) in cards.enumerated() {
            card.setTitle(images[i], for: .normal)
            card.setTitleColor(UIColor.clear, for: .normal)
            card.backgroundColor = backColor
        }
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        if sender.currentTitleColor == UIColor.clear {
            sender.setTitleColor(UIColor.white, for: .normal)
            sender.backgroundColor = UIColor.cyan
        } else {
            sender.setTitleColor(UIColor.clear, for: .normal)
            sender.backgroundColor = backColor
        }
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

