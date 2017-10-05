//
//  DetailViewController.swift
//  pronto! Delivery
//
//  Created by Thomas Getman on 10/4/17.
//  Copyright © 2017 pronto!. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var superheroAlterEgoLabel: UILabel!
    
    @IBOutlet weak var superheroPowersLabel: UILabel!
    
    @IBOutlet weak var superheroAffiliationsLabel: UILabel!
    
    @IBOutlet weak var superheroGadgetLabel: UILabel!
    
    var superhero = "No Picture"
    var superheroAlterEgo = "No Alter Ego"
    var superheroPowers = "No Powers"
    var superheroAffiliations = "No Affiliations"
    var superheroGadgets = "No Gadgets"
    var pictureName = "No Name"
    
    override func viewDidLoad() {
        
        self.itemImage.image = UIImage(named: "\(pictureName)")
        
        self.superheroAlterEgoLabel.text = self.superheroAlterEgo
        
        self.superheroPowersLabel.text = self.superheroPowers
        
        self.superheroAffiliationsLabel.text = self.superheroAffiliations
        
        self.superheroGadgetLabel.text = self.superheroGadgets
        
        
    }
    
}
