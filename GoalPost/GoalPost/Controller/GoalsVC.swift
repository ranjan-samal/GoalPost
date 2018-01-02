//
//  ViewController.swift
//  GoalPost
//
//  Created by Priyaranjan samal on 1/2/18.
//  Copyright © 2018 Priyaranjan Samal. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var goalsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalsTableView.delegate = self
        goalsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsVCCell", for: indexPath) as! GoalsCell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsVCCell")
        return cell
    }

}

