//
//  FoodsViewController.swift
//  FoodTable
//
//  Created by Steven Perrin on 3/7/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var foodsTableView: UITableView!
    var foods = ["Pizza", "Sushi", "Steak", "Chicken", "Fruit", "Salad", "Cake"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsTableView.dataSource = self
        foodsTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        cell.textLabel?.text = foods[indexPath.row]
        
        cell.backgroundColor = UIColor.green
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
