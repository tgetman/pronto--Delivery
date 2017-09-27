//
//  MenuViewController.swift
//  pronto! Delivery
//
//  Created by Thomas Getman on 9/27/17.
//  Copyright © 2017 pronto!. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var menuTableView: UITableView!
    
    let menuItems = ["Pizza", "Pasta", "Strombolli"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        let text = menuItems[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}
