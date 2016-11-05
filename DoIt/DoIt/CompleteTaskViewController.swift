//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var previousVC = TasksViewController()
    
    @IBOutlet weak var completeLabel: UILabel!
    
    var task = Task()

    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            completeLabel.text = "‼️ \(task.name)"
        }else{
            completeLabel.text = task.name
        }


        // Do any additional setup after loading the view.
    }
    @IBAction func CompleteTapped(_ sender: UIButton) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.taskTable.reloadData()
        navigationController!.popViewController(animated: true)

    }



}
