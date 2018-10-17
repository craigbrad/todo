//
//  ViewController.swift
//  Todo
//
//  Created by Craig Bradley on 15/10/2018.
//  Copyright © 2018 Craig Bradley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items = ["Buy Milk", "Run Five Miles", "Get Pete", "Plant My New Plants"]
    
    @IBOutlet weak var uiTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }

    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            items.remove(at: indexPath.row)
            uiTableView.reloadData()
        }
    }
    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView){
        print("scrolling")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

