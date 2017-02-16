//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Das Beard on 2/15/17.
//  Copyright © 2017 dasBeard. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTotalDelegate {
    
// Variables ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    var total = 0
    var counterArray = [Counter]()
    var arrayBuilder = 1
    
    
// Outlets ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
// UI Lifecycle ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        counterArray.append(Counter(value: 1))
        for _ in 1...16{
            
            counterArray.append(Counter(value: arrayBuilder))
            arrayBuilder *= 10
        }
        
        myTableView.reloadData()
        
        totalLabel.text = "Total: \(total)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

    
// Tableview Methods ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return counterArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    // Instantiate Cell
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell") as! CounterCell
        
        
    // Set Data fro Cell
        cell.model = counterArray[indexPath.row]
        cell.addTotalDelegate = self
        
        
    // Return Cell
        return cell
        
    }
    
    
// Delegate Methods ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

    func addToTotal(num: Int) {
        total += num
        totalLabel.text = "Total: \(total)"
    }
    
    func subtractFromTotal(num: Int) {
        total -= num
        totalLabel.text = "Total: \(total)"
    }
    
    
    
    
    
    
    
    
    
    
 
}

