//
//  MenuViewController.swift
//  pronto! Delivery
//
//  Created by Thomas Getman on 9/27/17.
//  Copyright © 2017 pronto!. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //listing all items
    
    var menuitems = ["Pizza", "Pasta"]
    
    var superhero = "SUPER"
    
    override func viewDidLoad() {
        
        //Lets do this
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuitems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = self.menuitems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.superhero = self.menuitems[indexPath.row]
        self.performSegue(withIdentifier: "SegueToDetailViewController", sender: self)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DetailViewController = segue.destination as! DetailViewController
        DetailViewController.superhero = self.superhero


}


}
